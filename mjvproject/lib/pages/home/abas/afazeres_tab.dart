import 'package:flutter/material.dart';
import 'package:mjvproject/components/spacer_component.dart';

class AfazeresTab extends StatefulWidget {
  final int valorInicial;
  const AfazeresTab({super.key, required this.valorInicial});

  @override
  State createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late int acumulador;

  void somarMaisUm() {
    setState(() {
      acumulador++;
    });
  }

  @override
  void initState() {
    acumulador = widget.valorInicial;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$acumulador'), // porque dart é fortemente tipado
        const SpacerComponent(),
        ElevatedButton(onPressed: somarMaisUm, child: const Text('+1')),
      ],
    );
  }
}
