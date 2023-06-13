import 'package:flutter/material.dart';
import 'package:mjvproject/components/icon_button_component.dart';
import 'package:mjvproject/components/spacer_component.dart';

class PerfilTab extends StatelessWidget {
  const PerfilTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Card(
                margin: const EdgeInsets.all(0),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(children: [
                    const CircleAvatar(
                      child: Text('AB'),
                    ),
                    const SpacerComponent(size: 8, isHorizontal: true),
                    const Text(
                      'Adriana Boza',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SpacerComponent(isFull: true),
                    IconButtonComponent(
                      icon: Icons.more_vert,
                      onPressed: () {},
                    ),
                    // IconButton(
                    //   icon: const Icon(Icons.more_vert),
                    //   onPressed: () {},
                    // ),
                  ]),
                ),
              ),
              const SpacerComponent(),
              const Text(
                'Minhas estatísticas',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SpacerComponent(),
              const Row(children: [
                Icon(Icons.list),
                SpacerComponent(size: 8, isHorizontal: true),
                Text('Total de notas: '),
                Text('0'),
              ]),
              const Row(children: [
                Icon(Icons.done_all),
                SpacerComponent(size: 8, isHorizontal: true),
                Text('Concluídas: '),
                Text('0'),
              ]),
              const SizedBox(height: 16),
              Padding(padding: EdgeInsets.symmetric(vertical: 4)),
              const Divider(),
              const SpacerComponent(),
              const Text(
                'Configurações',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SpacerComponent(),
              Row(children: [
                const Text('Tema escuro', style: TextStyle(fontSize: 12)),
                const SpacerComponent(isFull: true),
                Switch(value: true, onChanged: (val) {}),
              ]),
            ]),
    );
  }
}