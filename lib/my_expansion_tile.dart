import 'package:flutter/material.dart';

class MyExpansionTile extends StatefulWidget {

  //
  final int count;
  const MyExpansionTile({Key? key, required this.count}) : super(key: key);

  @override
  State<MyExpansionTile> createState() => _MyExpansionTileState();
}

class _MyExpansionTileState extends State<MyExpansionTile> {
  bool isClicked = false;
  double turns = 0.0;
  final time = const Duration(milliseconds: 300);
  late int count;
  @override
  void initState() {
    super.initState();
    count = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: isClicked ? Colors.black12 : Colors.transparent),
              bottom: BorderSide(
                  color: isClicked ? Colors.black12 : Colors.transparent))),
      child: Column(
        children: [
          ListTile(
            onTap: () {
              setState(() {
                isClicked = !isClicked;
                isClicked ? turns += 0.5 : turns -= 0.5;
              });
            },
            title: Text('Meu Texto $count'),
            textColor: isClicked ? Colors.blue : Colors.black,
            trailing: AnimatedRotation(
                turns: turns,
                duration: time,
                child: const Icon(Icons.expand_more)),
          ),
          ClipRRect(
            child: AnimatedAlign(
              alignment: Alignment.bottomCenter,
              duration: time,
              heightFactor: isClicked ? 1 : 0,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                child: Column(
                  children: const [
                    FlutterLogo(size: 40),
                    SizedBox(height: 5),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas dignissim libero vitae aliquet posuere. Cras sapien diam, mattis quis lobortis ac, fermentum eu mi. Vestibulum molestie justo nec velit venenatis viverra. Pellentesque sed elit vestibulum lacus tempor condimentum at in ipsum. Morbi sed sapien urna. Aenean non imperdiet odio. Sed rhoncus purus quis facilisis rutrum',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
