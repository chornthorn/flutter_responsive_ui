import 'package:flutter/widgets.dart';
import 'package:thorn_ecommerce_ui/config/screen_sizes/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;
  double deviceWidth = 0;
  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }
  if (deviceWidth > 1024) {
    return DeviceScreenType.Desktop;
  }
  if (deviceWidth >= 600) {
    return DeviceScreenType.Tablet;
  }
  return DeviceScreenType.Mobile;
}
