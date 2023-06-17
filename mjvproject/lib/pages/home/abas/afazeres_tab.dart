import 'package:flutter/material.dart';
import 'package:mjvproject/components/icon_button_component.dart';
import 'package:mjvproject/components/spacer_component.dart';

import '../../../entities/afazer_entity.dart';

class AfazeresTab extends StatefulWidget {
  const AfazeresTab({
    super.key,
  });

  @override
  State createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late List<AfazerEntity> _listaAfazeres;

  void handleAdicionar() {
    setState(() {
      _listaAfazeres.add(
        AfazerEntity(
            uuid: 'teste1',
            titulo: 'teste 1',
            dataFim: DateTime.now(),
            dataInicio: DateTime.now(),
            isConcluido: false),
      );
    });
  }

  void handleExcluir(int index){
    _listaAfazeres.removeAt(index);
    setState(() {
      _listaAfazeres = _listaAfazeres;
    });
  }

  @override
  void initState() {
    _listaAfazeres = [
      AfazerEntity(
          uuid: 'teste1',
          titulo: 'teste 1',
          dataFim: DateTime.now(),
          dataInicio: DateTime.now(),
          isConcluido: false),
      AfazerEntity(
          uuid: 'teste2',
          titulo: 'teste 2',
          dataFim: DateTime.now(),
          dataInicio: DateTime.now(),
          isConcluido: true),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: handleAdicionar,
          child: const Text('Adicionar'),
        ),
        SizedBox(
          width: double.infinity,
          height: 400,
          child: ListView.builder(
            itemCount: _listaAfazeres.length,
            itemBuilder: (context, index) {
              final item = _listaAfazeres.elementAt(index);
              return Dismissible(key: Key(item.uuid), child: Text(item.titulo));
              // return Row(
              //   children: [
              //     Text(item.titulo),
              //     const SpacerComponent(isHorizontal: true),
              //     IconButtonComponent(onPressed: () => handleExcluir(index)),
              //   ],
              // );
            },
          ),
        ),
      ],
    );
  }
}
