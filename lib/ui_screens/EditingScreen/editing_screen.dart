import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neso_software_sample_flutter/bloc/EditDetailsBloc/edit_details_bloc.dart';
import 'package:neso_software_sample_flutter/data/ApiStatus/api_status.dart';
import 'package:neso_software_sample_flutter/repositories/EditDetailsRepository/edit_details_repository.dart';
import 'package:neso_software_sample_flutter/utils/TextStyles/text_styles.dart';

class EditingScreen extends StatelessWidget {
  final String productId;
  const EditingScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController titleController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    return BlocProvider(
      create: (context) => EditDetailsBloc(EditDetailsRepository()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Details'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: TextStyles.productListTitleStyle,
                  ),
                  TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.black),
                          ))),
                  Text(
                    'Price',
                    style: TextStyles.productListTitleStyle,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: priceController,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.black),
                        )),
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        if (double.tryParse(value) == null) {
                          return 'Please enter a valid number';
                        }
                      }
                      return null;
                    },
                  ),
                  Text(
                    'Description',
                    style: TextStyles.productListTitleStyle,
                  ),
                  TextFormField(
                      maxLines: 5,
                      controller: descriptionController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.black),
                          ))),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BlocBuilder<EditDetailsBloc, EditDetailsState>(
                      builder: (context, state) {
                        final status = state.apiCallResponse.apiStatus;
                        if (status == ApiStatus.loading) {
                          return const CircularProgressIndicator();
                        } else if (status == ApiStatus.completed) {
                          Future.delayed(Duration.zero, () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Details updated successfully!'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                            Navigator.pushReplacementNamed(
                                context, 'product_screen',
                                arguments: productId);
                          });

                          return const SizedBox.shrink();
                        } else if (status == ApiStatus.error) {
                          Future.delayed(Duration.zero, () {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(state.apiCallResponse.message!),
                              duration: Duration(seconds: 3),
                            ));
                          });
                          return ElevatedButton(
                              onPressed: () {
                                _handleSubmit(context, titleController,
                                    priceController, descriptionController);
                              },
                              child: const Text('Submit'));
                        } else {
                          return ElevatedButton(
                              onPressed: () {
                                _handleSubmit(context, titleController,
                                    priceController, descriptionController);
                              },
                              child: const Text('Submit'));
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleSubmit(
    BuildContext context,
    TextEditingController titleController,
    TextEditingController priceController,
    TextEditingController descriptionController,
  ) {
    String titleText = titleController.text.trim();
    String? priceText = priceController.text.trim().toString();
    String descriptionText = descriptionController.text.trim();

    double? price = double.tryParse(priceText);
    if (priceText.isNotEmpty && price == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a valid price.'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }
    context.read<EditDetailsBloc>().add(SubmitButtonClickedEvent(
        titleText, priceText, descriptionText, productId));
  }
}
