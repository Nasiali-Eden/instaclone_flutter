import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttons = [
      "IGTV",
      "Travel",
      "Architecture",
      "Decor",
      "Style",
      "Food",
      "Art",
      "Beauty",
      "DIY",
      "Music",
    ];

    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        title: TextFormField(
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Search",
            contentPadding: EdgeInsets.all(0),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            fillColor: Color.fromRGBO(220, 220, 220, 1),
            filled: true,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_add),
            onPressed: () {},
          )
        ],
      ),
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(10, (index) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      buttons[index],
                    ),

                  ),
                )),
              ),
            ),
          )
    ]));
  }
}
