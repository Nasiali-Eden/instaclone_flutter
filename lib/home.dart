import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<StatefulWidget> createState() => _homeState();
}

class _homeState extends State<home> {
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

  List<String> posts = [
    "images/post_1.jpg",
    "images/post_2.jpg",
    "images/post_3.jpg",
    "images/post_4.jpg",
    "images/post_5.jpg",
    "images/post_6.jpg",
    "images/post_7.jpg",
    "images/post_8.jpg",
    "images/post_9.jpg",
    "images/post_10.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "images/brand_name1.png",
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
                    children: List.generate(
                      10,
                      (index) => Container(
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
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Profile Name",
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
              const Divider(),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      10,
                      (index) => Column(
                            children: [
                              //HEADER POST
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundImage: const AssetImage(
                                        "images/story.jpg",
                                      ),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundImage: AssetImage(
                                          storybImages[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Text("Profile Name"),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert),
                                  )
                                ],
                              ),
                              //Image Post
                              Image.asset(posts[index]),
                              //FOOTER
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.favorite_border),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.chat_bubble_outline),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.label_outline),
                                    onPressed: () {},
                                  ),
                                  const Spacer(),
                                  IconButton(
                                    icon: const Icon(Icons.bookmark_border),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                        text: const TextSpan(
                                      style: TextStyle(color: Colors.black),
                                      children: [
                                        TextSpan(text: "Liked by "),
                                        TextSpan(
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            text: "Profile Name "),
                                        TextSpan(text: "and "),
                                        TextSpan(
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            text: "Others"),
                                      ],
                                    )),
                                    RichText(
                                      text: const TextSpan(
                                        style: TextStyle(color: Colors.black),
                                        children: [
                                          TextSpan(
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                              text: "Profile Name "),
                                          TextSpan(
                                              text:
                                                  "Caption, caption caption caption "),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      "View all 12 Comments",
                                      style: TextStyle(
                                        color: Colors.black38,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )))
            ],
          ),
        ));
  }
}
