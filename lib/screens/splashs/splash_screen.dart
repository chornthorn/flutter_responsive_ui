import 'package:flutter/material.dart';
import 'package:thorn_ecommerce_ui/screens/splashs/component/body.dart';
import 'package:thorn_ecommerce_ui/config/size_config.dart';

class SplashScreen extends StatelessWidget {
  static final String routeName = '/splash_screen';
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
