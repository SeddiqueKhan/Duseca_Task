import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final String label;

  const CustomRadioButton({super.key, required this.label});

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}


class _CustomRadioButtonState extends State<CustomRadioButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Row(
        children: [
          Radio(
            activeColor: Colors.red,
            value: widget.label,
            groupValue: isSelected ? widget.label : null,
            onChanged: (value) {
              setState(() {
                isSelected = !isSelected;
              });
            },
          ),
          Text(widget.label, style: const TextStyle(color: Colors.red),),
        ],
      ),
    );
  }
}