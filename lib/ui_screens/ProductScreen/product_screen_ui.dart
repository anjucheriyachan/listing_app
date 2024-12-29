import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neso_software_sample_flutter/bloc/ProductDetailBloc/product_details_bloc.dart';

import '../../model/ProductList/product_list_model.dart';
import '../../utils/TextStyles/text_styles.dart';

class ProductScreenUi extends StatefulWidget {
  final Product productDetails;

  const ProductScreenUi({super.key, required this.productDetails});

  @override
  _ProductScreenUiState createState() => _ProductScreenUiState();
}

class _ProductScreenUiState extends State<ProductScreenUi>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final productDetails = widget.productDetails;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                height: 250,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    context
                        .read<ProductDetailsBloc>()
                        .add(UpdatePageEvent(index));
                  },
                  itemCount: productDetails.images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade500,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.network(
                            productDetails.images[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
              builder: (context, state) {
                final currentIndex = state.index;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      productDetails.images.length,
                      (index) => GestureDetector(
                        onTap: () {
                          _pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                          context
                              .read<ProductDetailsBloc>()
                              .add(UpdatePageEvent(index));
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 4.0),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: currentIndex == index
                                  ? Colors.purple
                                  : Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                              productDetails.images[index],
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '\$ ${productDetails.price.toString()}',
                textAlign: TextAlign.start,
                style: TextStyles.detailPriceStyle,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'editing_screen',
                      arguments: productDetails.id.toString());
                },
                child: const Row(
                  children: [
                    Text('Edit'),
                    Icon(Icons.edit),
                  ],
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0, left: 12, right: 12),
          child: Text(
            productDetails.title,
            textAlign: TextAlign.start,
            style: TextStyles.productListMainTitleStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0, left: 12, right: 12),
          child: Text(
            'About the item',
            textAlign: TextAlign.start,
            style: TextStyles.productDescGrey,
          ),
        ),
        TabBar(
          controller: _tabController,
          indicatorColor: Colors.purple,
          indicatorWeight: 4.0,
          tabs: const [
            Tab(text: 'Description'),
            Tab(text: 'Reviews'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(productDetails.description),
              ),
              ListView.builder(
                padding: const EdgeInsets.all(12.0),
                itemCount: productDetails.reviews.length,
                itemBuilder: (context, index) {
                  final review = productDetails.reviews[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              review.reviewerName,
                              style: const TextStyle(fontSize: 12),
                            ),
                            Text(
                              review.date.split('T').first,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        // Star rating row
                        Row(
                          children: List.generate(
                            5,
                            (starIndex) => Icon(
                              Icons.star,
                              color: starIndex < review.rating
                                  ? Colors.amber
                                  : Colors.grey,
                              size: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          review.comment,
                          style: TextStyles.productListDescStyle,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
