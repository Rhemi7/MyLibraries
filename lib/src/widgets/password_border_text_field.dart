import 'package:flutter/material.dart';

import 'borderless_text_field.dart';

class PasswordField extends StatefulWidget {
  final double iconSize;
  final String hint;
  final Function? onChanged;
  final TextEditingController controller;
  final double? width;
  final Color focusedColor;
  final Color unFocusedColor;
  final Widget makeVisibleIcon;
  final Widget makeInvisibleIcon;

  const PasswordField(
      {super.key,
      this.iconSize = 18,
      this.hint = "",
      required this.focusedColor,
      required this.unFocusedColor,
      this.makeVisibleIcon =  const Icon(
        Icons.visibility,
        size: 18,
        color: Colors.grey,
      ),
       this.makeInvisibleIcon = const Icon(
         Icons.visibility_off,
         color: Colors.grey,
         size: 18,
       ) ,
     required this.controller,
      this.onChanged,
      this.width});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _passwordVisibility = true;

  void _toggle() {
    _passwordVisibility = !_passwordVisibility;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 35,
      width: widget.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: widget.controller.text.isEmpty ? widget.unFocusedColor : widget.focusedColor,
            width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 9.0, left: 15, bottom: 1),
              child: BorderlessTextField(
                textAlign: TextAlign.start,
                hint: widget.hint,
                obscureText: _passwordVisibility,
                onChanged: widget.onChanged,
                textCapitalization: TextCapitalization.none,

                // style: TextStyle(fontSize: 14, fontFamily: "Poppins-Medium"),
                // hintStyle: TextStyle(
                //     fontSize: 14, color: HashColors.hashTextFieldHintColor),
                maxLength: 19,
                controller: widget.controller,
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 10), // Added this
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              setState(() {
                _toggle();
              });
            },
            child: Padding(
              padding:
                  const EdgeInsets.only(right: 12, left: 12, top: 7, bottom: 7),
              child: (_passwordVisibility)
                  ? widget.makeVisibleIcon
                  : widget.makeInvisibleIcon,
            ),
          ),
        ],
      ),
    );
  }
}
