import 'package:flutter/material.dart';
import 'package:mjvproject/components/app_bar_component.dart';
import 'package:mjvproject/pages/home/abas/afazeres_tab.dart';
import 'package:mjvproject/pages/home/abas/perfil_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int abaSelecionada;

  @override
  void initState() {
    abaSelecionada = 0;
    super.initState();
  }

  final List<BottomNavigationBarItem> _abas = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(
      icon: Icon(Icons.account_circle), label: 'Perfil'),
  ];

  final List<Widget> _conteudos = [
    const AfazeresTab(valorInicial: 5),
    const PerfilTab(),
  ];

  void handleTab(int tabIndex) {
    setState(() {
      abaSelecionada = tabIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: const AppBarComponent(),
      body: _conteudos.elementAt(abaSelecionada),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: abaSelecionada,
        items: _abas,
        onTap: handleTab,
      ),
    );
  }
}
