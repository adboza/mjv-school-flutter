import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'School',
        home: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Card(
                margin: const EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Row(children: [
                    const CircleAvatar(
                      child: Text('AB'),
                    ),
                    const SizedBox(width: 8),
                    const Text('Adriana Boza', style: TextStyle(fontWeight: FontWeight.bold),),
                    const Spacer(),
                    IconButton(
                    icon: const Icon(Icons.more_vert), onPressed: () {},
                    ),
                  ]),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Minhas estatísticas',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Row(children: [
                Icon(Icons.list),
                SizedBox(width: 8),
                Text('Total de notas: '),
                Text('0'),
              ]),
              const Row(children: [
                Icon(Icons.done_all),
                SizedBox(width: 8),
                Text('Concluídas: '),
                Text('0'),
              ]),

              const SizedBox(height: 16),
              Padding(padding: EdgeInsets.symmetric(vertical: 4)),
              const Divider(),
              const SizedBox(height: 16),
              const Text(
                'Configurações',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 16),
              Row(children: [
                const Text('Tema escuro', style: TextStyle(fontSize: 12)),
                const Spacer(),
                Switch(value: true, onChanged: (val) {}),
              ]),
            ]),
          ),
        ));

    /* return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: Container(
        padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(child: Text('AB'),),
                const Text('Texto1'),
                const Text('Texto2'),
                const Text('Texto3'),
                const Divider(),
                const Row(
                  children: [
                    Icon(Icons.add, color: Colors.green),
                    Spacer(),
                    Icon(Icons.access_alarm, color: Colors.yellow),
                  ],
                ),
                Switch(value: true, onChanged: (val) {}),
                const Card(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text('Adriana'),
                  ),
                ),
              ]),
        ),
      ),
    ); */
  }
}
