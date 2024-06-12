import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 1,
          color: Colors.white
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const home(),
      bottomNavigationBar: BottomAppBar(child: Row(
        children: [
          const Spacer(),
          IconButton(
            icon: Icon(Icons.home,
              color: currentPage == 0
                  ? const Color.fromRGBO(203, 73, 202, 1)
                  : const Color.fromRGBO(40, 40, 40, 1),
            ),
            onPressed: () {
              setState(() {
                currentPage = 0;
              });
            },
          ),
          const Spacer(),
          IconButton(
            icon: Icon(Icons.search,
              color: currentPage == 1
                ? const Color.fromRGBO(203, 73, 202, 1)
                : const Color.fromRGBO(40, 40, 40, 1),
            ),
            onPressed: () {
              setState(() {
                currentPage = 1;
              });
            },
          ),
          const Spacer(),
          IconButton(
            icon: Icon(Icons.ondemand_video,
              color: currentPage == 2
                ? const Color.fromRGBO(203, 73, 202, 1)
                : const Color.fromRGBO(40, 40, 40, 1),
            ),
            onPressed: () {
              setState(() {
                currentPage = 2;
              });
            },
          ),
          const Spacer(),
          IconButton(
            icon: Icon(Icons.card_travel,
              color: currentPage == 3
                ? const Color.fromRGBO(203, 73, 202, 1)
                : const Color.fromRGBO(40, 40, 40, 1),
            ),
            onPressed: () {
              setState(() {
                currentPage = 3;
              });
            },
          ),
          const Spacer(),
          IconButton(
            icon: Icon(Icons.person,
              color: currentPage == 4
                ? const Color.fromRGBO(203, 73, 202, 1)
                : const Color.fromRGBO(40, 40, 40, 1),
            ),
            onPressed: () {
              setState(() {
                currentPage = 4;
              });
            },
          ),
          const Spacer(),
        ],
      ),
      ),
    );
  }
}
