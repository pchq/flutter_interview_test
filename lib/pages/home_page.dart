import 'package:flutter/material.dart';
import 'package:test/widgets/app_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<AppButton> _buttons = [
    const AppButton(color: Colors.red, key: Key('red')),
    const AppButton(color: Colors.yellow, key: Key('yellow')),
    const AppButton(color: Colors.green, key: Key('green')),
  ];

  void _removeTop() {
    if (_buttons.isNotEmpty) {
      setState(() {
        _buttons.removeAt(0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            ..._buttons,
            const Spacer(),
            MaterialButton(
              onPressed: _removeTop,
              child: const Text('Remove top'),
              color: Colors.redAccent,
            ),
          ],
        ),
      ),
    );
  }
}
