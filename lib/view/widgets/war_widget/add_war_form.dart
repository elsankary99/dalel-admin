import 'package:dalel_admin/provider/add_war_provider/add_war_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dalel_admin/core/widget/custom_txt_form.dart';
import 'package:flutter/material.dart';

class AddWarForm extends ConsumerWidget {
  const AddWarForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(addWarProvider.notifier);

    return Form(
      key: provider.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            labelText: "Enter War Name",
            onSaved: (name) {
              provider.name = name!.trim();
            },
          ),
          CustomTextFormField(
            labelText: "Enter War Description",
            maxLine: true,
            onSaved: (description) {
              provider.description = description!.trim();
            },
          ),
        ],
      ),
    );
  }
}
