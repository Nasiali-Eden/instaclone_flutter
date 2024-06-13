import 'package:flutter/cupertino.dart';
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
        height: 85,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //STORY
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children:List.generate(
                    10, (index) => Container(
                      child: CircleAvatar(),
                  ),
              ),
            ),
        )
          ],
        ),
      ),
    );
  }
}