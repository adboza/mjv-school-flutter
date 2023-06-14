import 'package:flutter/material.dart';

abstract class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;
  const AppBarComponent({
    Key? key,
    this.titulo = 'School',
    }) : super(key: key);

  @override
  Size get size => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(titulo));
  }
}
