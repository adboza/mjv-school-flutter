import 'package:flutter/material.dart';

class IconButtonComponent extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color? color; //pode ou não ser recebido
  final Function()? onPressed;


  const IconButtonComponent({
    super.key,
    this.onPressed,
    this.size = 24,
    this.icon = Icons.add,
    this.color,
    });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed, 
      icon: Icon(icon),
      color: color,
      iconSize: size,
      );
  }
}
