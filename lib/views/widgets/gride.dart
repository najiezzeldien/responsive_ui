import 'package:flutter/material.dart';
import 'package:responsive_ui/views/widgets/cart.dart';

class GrideWidgetView extends StatelessWidget {
  const GrideWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: 20,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return const CardWidget(
            color: Colors.lightBlueAccent,
          );
        },
      ),
    );
  }
}
