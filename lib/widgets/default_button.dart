import 'package:flutter/material.dart';
import 'package:thorn_ecommerce_ui/utils/constant.dart';
import 'package:thorn_ecommerce_ui/config/size_config.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  const DefaultButton({
    Key key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(60),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: onPressed,
        color: kPrimaryColor,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
