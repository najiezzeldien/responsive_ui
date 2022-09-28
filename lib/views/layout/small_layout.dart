import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_ui/views/widgets/gride.dart';
import 'package:responsive_ui/views/widgets/header.dart';
import 'package:responsive_ui/views/widgets/list.dart';

class SmallLayout extends StatelessWidget {
  const SmallLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          flex: 3,
          child: HeaderWidget(),
        ),
        Expanded(
          flex: 2,
          child: ListWidgetView(),
        ),
        Expanded(
          flex: 5,
          child: GrideWidgetView(),
        ),
      ],
    );
  }
}
