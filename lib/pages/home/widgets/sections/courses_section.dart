import 'package:example_web_responsiveness/utils/breakpoint.dart';
import 'package:flutter/material.dart';

class CoursesSection extends StatelessWidget {
  const CoursesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return GridView.builder(
          /// SliverGridDelegateWithMaxCrossAxisExtent => é usado para fazer de forma automatica a renderização.

          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.red,
            );
          },
        );
      }),
    );
  }
}
