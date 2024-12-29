import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neso_software_sample_flutter/data/ApiStatus/api_status.dart';
import 'package:neso_software_sample_flutter/repositories/ProductListRepository/product_list_repository.dart';

import '../../bloc/ProductListBloc/product_list_bloc.dart';
import 'listing_screen_ui.dart';

class ListingScreen extends StatelessWidget {
  const ListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductListBloc(ProductListRepository())
        ..add(FetchProductListEvent()),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: const Icon(Icons.menu),
          actions: const [Icon(Icons.shopping_cart_outlined)],
        ),
        body: BlocBuilder<ProductListBloc, ProductListState>(
          builder: (context, state) {
            final status = state.apiCallResponse.apiStatus;
            final productList = state.apiCallResponse.response?.products ?? [];
            switch (status) {
              case ApiStatus.loading:
                return const Center(child: CircularProgressIndicator());
              case ApiStatus.completed:
                if (productList.isEmpty) {
                  return const Center(child: Text('No products available'));
                }
                return ListingScreenUI(
                  productList: productList,
                  onClick: () {},
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
