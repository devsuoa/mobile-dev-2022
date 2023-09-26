import 'package:flutter/material.dart';
import 'package:mem_game/game.dart';
import 'package:mem_game/widgets/custom_card.dart';
import 'package:mem_game/widgets/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Game game = Game();

  int turns = 0;
  int pairsFound = 0;

  @override
  void initState() {
    super.initState();
    game.initGame();
  }
}
