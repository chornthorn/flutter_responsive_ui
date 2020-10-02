import 'package:flutter/material.dart';
import 'package:thorn_ecommerce_ui/widgets/responsive_widgets/platform_widget.dart';
import 'package:thorn_ecommerce_ui/widgets/responsive_widgets/responsive_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      mobile: (context) {
        return ResponsiveWidget(
          portraitLayout: Scaffold(
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Phone portrait',
                      // style: TextStyle(fontSize: getProportionateScreenHeight(20)),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    // height: getProportionateScreenHeight(200),
                    // width: getProportionateScreenWidth(200),
                    height: 100,
                    width: 200,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
          landscapeLayout: Scaffold(
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'Phone landscape',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        );
      },
      tablet: (context) {
        return ResponsiveWidget(
          portraitLayout: Scaffold(
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'Table portrait ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          landscapeLayout: Scaffold(
            body: Padding(
              padding: EdgeInsets.all(20),
              child: Center(
                child: Text(
                  'Table landscape',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
