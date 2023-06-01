import 'package:flutter/material.dart';
import 'package:nortcele_web_app/utils/color_constant.dart';

// ignore: must_be_immutable
class CustomDropdownFieldWidget extends StatefulWidget {
  CustomDropdownFieldWidget(
      {super.key,
      required this.selectedValue,
      required this.servicesList,
      // required this.globalKey
      });
  // final GlobalKey globalKey;
  String selectedValue;
  final List<String> servicesList;

  @override
  State<CustomDropdownFieldWidget> createState() =>
      _CustomDropdownFieldWidgetState();
}

class _CustomDropdownFieldWidgetState extends State<CustomDropdownFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: AppColors.colorGreyShade1)),
      height: 60,
      width: 260,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: DropdownButtonFormField(
          // key: widget.globalKey,
          decoration: const InputDecoration(
              labelText: 'SELECT SERVICE',
              border: UnderlineInputBorder(borderSide: BorderSide.none)),
          icon: const Icon(Icons.arrow_drop_down),
          value: widget.selectedValue,
          items: widget.servicesList.map((e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          }).toList(),
          onChanged: ((value) {
            setState(() {
              widget.selectedValue = value!;
            });
          }),
        ),
      ),
    );
  }
}
