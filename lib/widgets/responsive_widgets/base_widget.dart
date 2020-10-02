import 'package:flutter/material.dart';
import 'package:thorn_ecommerce_ui/config/screen_sizes/size_config.dart';
import 'package:thorn_ecommerce_ui/config/screen_sizes/size_information.dart';
import 'package:thorn_ecommerce_ui/utils/ui_util.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const BaseWidget({Key key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var sizingInformation = SizingInformation(
      orientation: mediaQuery.orientation,
      deviceType: getDeviceType(mediaQuery),
      screenSize: mediaQuery.size,
    );
    SizeConfig().init(context);
    return builder(context, sizingInformation);
  }
}
