import 'package:flutter/material.dart';

Widget listDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );

Widget loadingIndicator() => Center(
      child: Container(
        width: 200.0,
        child: LinearProgressIndicator(),
      ),
    );

void navToScreen(context, Screen) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Screen,
    ));

Widget DefaultButton({
  double width = double.infinity,
  Color backgroundColor = Colors.blue,
  required Function function,
  required String text,
  bool isUpperCase = true,
  double radius = 10.0,
}) =>
    Container(
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
    );

Widget DefaultFormField({
  required TextEditingController controller,
  required String text,
  required String? Function(String?)? validate,
  bool isPassword = false,
  bool isReadOnly = false,
  Widget? suffixIcon,
  Widget? prefixIcon,
  TextInputType? keyboardType,
  Function(String)? onFieldSubmitted,
  Function(String)? onChanged,
  Function()? onTap,
}) =>
    TextFormField(
      validator: validate,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      onTap: onTap,
      readOnly: isReadOnly,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
