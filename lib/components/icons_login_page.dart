import 'package:flutter/material.dart';

class IconsLoginPageWidgets extends StatelessWidget {
  const IconsLoginPageWidgets({
    Key? key,
    required this.textIcons,
    required this.widgetIcon,
  }) : super(key: key);

  final String textIcons;
  final IconData widgetIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        GestureDetector(
          child: Column(
            children: [
              Icon(
                widgetIcon,
                color: const Color.fromARGB(255, 3, 160, 155),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                textIcons,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400),
              )
            ],
          ),
        )
      ],
    );
  }
}
