import 'package:dalel_admin/provider/add_history_book_provider/add_history_book_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dalel_admin/core/widget/custom_txt_form.dart';
import 'package:flutter/material.dart';

class AddBooksForm extends ConsumerWidget {
  const AddBooksForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(addHistoryBookProvider.notifier);

    return Form(
      key: provider.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            labelText: "Enter Book Name",
            onSaved: (name) {
              provider.name = name!.trim();
            },
          ),
          CustomTextFormField(
            labelText: "Enter Book Description",
            maxLine: true,
            onSaved: (description) {
              provider.description = description!.trim();
            },
          ),
          CustomTextFormField(
            labelText: "Enter Book Price",
            maxLine: true,
            onSaved: (price) {
              provider.price = price!.trim();
            },
          ),
        ],
      ),
    );
  }
}
