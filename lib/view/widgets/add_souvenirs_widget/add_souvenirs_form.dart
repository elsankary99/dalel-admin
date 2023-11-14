import 'package:dalel_admin/provider/add_historycal_souvenirs_provider/add_historucal_souvenir_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dalel_admin/core/widget/custom_txt_form.dart';
import 'package:flutter/material.dart';

class AddBazarSouvenirForm extends ConsumerWidget {
  const AddBazarSouvenirForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(addHistoricalSouvenirProvider.notifier);

    return Form(
      key: provider.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            labelText: "Enter Souvenir Name",
            onSaved: (name) {
              provider.name = name!.trim();
            },
          ),
          CustomTextFormField(
            labelText: "Enter Souvenir Description",
            maxLine: true,
            onSaved: (description) {
              provider.description = description!.trim();
            },
          ),
          CustomTextFormField(
            labelText: "Enter Souvenir Price",
            onSaved: (price) {
              provider.price = price!.trim();
            },
          ),
        ],
      ),
    );
  }
}
