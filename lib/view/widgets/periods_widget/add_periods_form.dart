import 'package:dalel_admin/core/widget/custom_txt_form.dart';
import 'package:flutter/material.dart';

class AddPeriodsForm extends StatelessWidget {
  const AddPeriodsForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(labelText: "Enter Name"),
        CustomTextFormField(
          labelText: "Enter Description",
          maxLine: true,
        ),
      ],
    );
  }
}
