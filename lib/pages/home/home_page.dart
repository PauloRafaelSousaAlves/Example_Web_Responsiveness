import 'package:example_web_responsiveness/breakpoint.dart';
import 'package:example_web_responsiveness/pages/home/widgets/appbar/mobile_appbar.dart';
import 'package:example_web_responsiveness/pages/home/widgets/appbar/web_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 60),
                  child: WebAppBar(),
                ),
          drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
        );
      },
    );
  }
}
