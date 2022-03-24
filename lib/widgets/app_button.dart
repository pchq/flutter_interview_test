import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  /// button background color
  final Color color;

  const AppButton({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: _increment,
      child: Text(_count == 0 ? 'Empty' : '~ [$_count] ~'),
      color: widget.color,
    );
  }
}
