import 'package:neso_software_sample_flutter/bloc/ProductDetailBloc/product_details_bloc.dart';
import 'package:neso_software_sample_flutter/repositories/ProductDetailRepository/product_detail_repository.dart';

import '../../data/ApiStatus/api_status.dart';
import '../../main_exports.dart';
import '../../model/ProductList/product_list_model.dart';
import 'product_screen_ui.dart';

class ProductScreen extends StatelessWidget {
  final String productId;
  const ProductScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsBloc(ProductDetailRepository())
        ..add(FetchProductDetailsEvent(productId: productId)),
      child: Scaffold(
        appBar: AppBar(
          actions: const [Icon(Icons.favorite_border)],
        ),
        body: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
          builder: (context, state) {
            final status = state.apiCallResponse.apiStatus;
            final Product? products = state.apiCallResponse.response;
            switch (status) {
              case ApiStatus.loading:
                return const Center(child: CircularProgressIndicator());
              case ApiStatus.completed:
                if (products == null) {
                  return const Center(child: Text('Product not found'));
                }
                return ProductScreenUi(
                  productDetails: products,
                );
              case ApiStatus.error:
                return Center(
                    child: Text(state.apiCallResponse.message.toString()));
              default:
                return const Center(child: Text('Error Occurred'));
            }
          },
        ),
      ),
    );
  }
}
