import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<StatefulWidget> createState() => _homeState();
  }


class _homeState extends State<home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/brand_name1.png",
        height: 50,),
      ),
    );
  }
}