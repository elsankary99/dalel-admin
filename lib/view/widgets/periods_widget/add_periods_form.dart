import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dalel_admin/core/widget/custom_txt_form.dart';
import 'package:dalel_admin/provider/periods_provider/periods_provider.dart';
import 'package:flutter/material.dart';

class AddPeriodsForm extends ConsumerWidget {
  const AddPeriodsForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.read(periodsProvider.notifier);

    return Form(
      key: provider.formKey,
      child: Column(
        children: [
          CustomTextFormField(
            labelText: "Enter Periods Name",
            onSaved: (name) {
              provider.name = name!.trim();
            },
          ),
          CustomTextFormField(
            labelText: "Enter Periods Description",
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
