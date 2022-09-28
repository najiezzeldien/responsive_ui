import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_ui/views/widgets/cart.dart';

class ListWidgetView extends StatelessWidget {
  const ListWidgetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            flex: 6,
            child: CardWidget(color: Colors.black12),
          ),
          Expanded(
            flex: 4,
            child: CardWidget(color: Colors.black12),
          ),
        ],
      ),
    );
  }
}
