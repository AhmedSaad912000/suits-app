import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final void Function()? onPress;

  const AppButton({super.key,  this.text='', this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
        child: FilledButton(onPressed: onPress, child: Text(text)));
  }
}
