import 'package:flutter/material.dart';

const style = TextStyle(fontSize: 48);

class FirstWidget extends StatefulWidget {
  const FirstWidget({Key? key}) : super(key: key);

  @override
  State<FirstWidget> createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: const TextSpan(
            text: 'Hello Dart',
            style: style,
          ),
        ),
        Image.asset(
          'assets/images/dart.png',
          height: 40,
        ),
      ],
    );
  }
}


class SecondWidget extends StatefulWidget {
  const SecondWidget({Key? key}) : super(key: key);

  @override
  State<SecondWidget> createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: const TextSpan(
            text: 'Hello Flutter',
            style: style,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          'assets/images/flutter.png',
          height: 40,
        ),
      ],
    );
  }
}




void main() => runApp(
      WidgetsApp(
        color: const Color(0x000fffff),
        builder: (context, _) => MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var switchTree = true;



  Widget get switchButton => GestureDetector(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: RichText(
            text: const TextSpan(text: 'Switch Tree'),
          ),
        ),
        onTap: () => setState(
          () => switchTree = !switchTree,
        ),
      );
  var firstWidget = const FirstWidget();
  var secondWidget = const SecondWidget();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        if(switchTree)
          firstWidget
        else
          secondWidget,

        switchButton,
      ],
    );
  }
}
