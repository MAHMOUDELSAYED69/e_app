import 'package:e_app/view/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TextItemListViwe extends StatelessWidget {
  const TextItemListViwe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 21),
      child: CustomTextFormField(
        keyboardType: TextInputType.text,
        hintText: 'Search',
        suffixIcon: const Icon(Icons.search),
        onChanged: (value) {},
      ),
    );
  }
}
