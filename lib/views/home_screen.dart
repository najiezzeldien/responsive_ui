import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_ui/views/layout/large_layout.dart';
import 'package:responsive_ui/views/layout/small_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Screen",
        ),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth < 800) {
                if (orientation == Orientation.landscape) {
                  return LargeLayout();
                } else {
                  return SmallLayout();
                }
              } else {
                return LargeLayout();
              }
            },
          );
        },
      ),
    );
  }
}
