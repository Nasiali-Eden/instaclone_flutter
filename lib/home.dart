import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<StatefulWidget> createState() => _homeState();
  }


class _homeState extends State<home>{
  List<String> storybImages = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",
    "images/7.jpg",
    "images/8.jpg",
    "images/9.jpg",
    "images/10.jpg",
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("images/brand_name1.png",
        height: 85,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.chat_bubble_outline),
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
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          CircleAvatar(
                          radius: 35,
                          backgroundImage: const AssetImage(
                            "images/story.jpg",
                          ),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(
                              storybImages[index],
                          ),
                        ),
                    ),
                       const SizedBox(height: 10,),
                       const Text(
                         "Profile Name",
                         style: TextStyle(fontSize: 12),
                       )
                        ],
                ),
              ),
            ),
        )
        ),
        ],
      ),
      )
    );
  }
}