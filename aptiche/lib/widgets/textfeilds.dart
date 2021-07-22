import 'package:aptiche/utils/theme.dart';
import 'package:aptiche/utils/ui_scaling.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    this.editingController,
    this.validator,
    this.label,
    this.hint,
    this.type,
    this.icon,
    Key? key,
  }) : super(key: key);

  final TextEditingController? editingController;
  final String? Function(String?)? validator;
  final String? label;
  final String? hint;
  final TextInputType? type;
  final IconData? icon;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.85,
      padding: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockVertical!),
      child: TextFormField(
        keyboardType: widget.type,
        textCapitalization: TextCapitalization.words,
        controller: widget.editingController,
        validator: widget.validator,
        onSaved: (String? value) {
          setState(() {
            widget.editingController!.text = value.toString();
          });
        },
        style: const TextStyle(color: kTextColourBlack),
        enableSuggestions: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.safeBlockHorizontal! * 7.5),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kSecondaryColor),
            borderRadius: BorderRadius.circular(20.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kTertiaryColor),
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: Icon(widget.icon, color: kTextColourBlack),
          labelText: widget.label,
          labelStyle: const TextStyle(color: kTextColourBlack),
          alignLabelWithHint: true,
          hintText: widget.hint,
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
