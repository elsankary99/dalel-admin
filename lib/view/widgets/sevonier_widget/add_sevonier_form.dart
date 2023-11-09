import 'package:dalel_admin/core/widget/custom_txt_form.dart';
import 'package:flutter/material.dart';

class AddSouvenirForm extends StatelessWidget {
  const AddSouvenirForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(labelText: "Enter Periods Name"),
        CustomTextFormField(
          labelText: "Enter Periods Description",
          maxLine: true,
        ),
      ],
    );
  }
}
