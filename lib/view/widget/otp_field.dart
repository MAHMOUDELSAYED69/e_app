import 'package:flutter/material.dart';

class OtpField extends StatelessWidget {
  const OtpField({
    super.key, this.onSaved,
  });
    final FormFieldSetter<String>? onSaved;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    
    return SizedBox(
      height: 64,
      width: 68,
      child: TextFormField(
        controller: controller,
        //? autovalidateMode: AutovalidateMode.always, //! AUTO VALIDATE
        autofocus: true,
        onSaved: onSaved,
        onChanged: (data) {
          if (data.length == 1) {
            FocusScope.of(context).nextFocus();
            controller.value;
          }
        },
        validator: (value) {
          if (value!.isEmpty) {
            return "";
          }
          if (value.contains(RegExp(r'[a-z]'))) {
            return "";
          }
          if (value.contains(RegExp(r'[A-Z]'))) {
            return "";
          }
          return null;
        },
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: const InputDecoration(
          counterText: '',
          errorStyle: TextStyle(fontSize: 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
