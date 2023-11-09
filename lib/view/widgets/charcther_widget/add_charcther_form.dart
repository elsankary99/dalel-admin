import 'package:dalel_admin/core/widget/custom_txt_form.dart';
import 'package:flutter/material.dart';

class AddCharacterForm extends StatelessWidget {
  const AddCharacterForm({
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
