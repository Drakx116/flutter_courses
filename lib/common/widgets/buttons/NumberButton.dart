import 'package:flutter/material.dart';

class NumberButton extends StatefulWidget
{
  const NumberButton({ Key? key, required this.value, required this.computeValue }) : super(key: key);

  final int value;
  final Function computeValue;

  @override
  State<NumberButton> createState() => _NumberButtonState();
}

class _NumberButtonState extends State<NumberButton>
{
  final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 24),
    minimumSize: const Size(72, 72)
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {
          widget.computeValue(widget.value);
        },
        child: Text(widget.value.toString()),
        style: style,
      ),
    );
  }
}