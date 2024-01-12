// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav({required this.index, super.key});
  int index;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    Color color_home = Colors.black;
    Color color_profile = Colors.black;
    if(widget.index == 0){
      color_home = Colors.white;
    }
    if(widget.index == 1){
      color_profile = Colors.white;
    }
    return BottomAppBar(
      child: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 95, 236, 101),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: color_home,
              ),
              onPressed: () {
                if (widget.index != 0) {
                  setState(() {
                    Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                    widget.index = 0;
                  });
                }
              },
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle_rounded,
                color: color_profile,
              ),
              onPressed: () {
                if (widget.index != 1) {
                  setState(() {
                    Navigator.pushNamedAndRemoveUntil(context, '/profile', (route) => false);
                    widget.index = 1;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
