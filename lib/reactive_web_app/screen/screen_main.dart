import 'package:flutter/material.dart';
import 'package:flutter_study/reactive_web_app/screen/web/web_content.dart';

import 'app/app_content.dart';

class ScreenMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) => _content();

  bool _isWeb = identical(0, 0.0); // 웹은 0과 0.0 이 같음

  Widget _content() {
    if (_isWeb)
      return WebContent();
    else
      return AppContent();
  }
}
