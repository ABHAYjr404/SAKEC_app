import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class HyperlinkText extends StatelessWidget {
  final String text;
  final url_text;
  HyperlinkText(this.text, this.url_text);
  @override

  Widget build(BuildContext context) => RichText(text: TextSpan(text: text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        color: Colors.blue,
        fontSize: 19,
        
      ),
      recognizer: TapGestureRecognizer()
        ..onTap = () {
          launch(url_text);
        }),
  );
}
