import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_catalogue/widgets/leftpane/left_pane_widget.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    //Start building the Interface
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/img/bg.jpg"), fit: BoxFit.cover),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Left Pane Section
            Container(
              width: 300,
              color: Colors.indigo.withOpacity(0.95),
              child: LeftPane(
                mainNavAction: () {},
                selected: 0,
              ),
            ),
            //2nd Column for Headers & Main Pane
            Expanded(
                child: Column(
              children: [
                //Main Header Section
                Container(
                  height: 120,
                  color: Colors.indigo.withOpacity(0.8),
                  child: Row(),
                ),
                //Filter Section
                Container(
                  height: 120,
                  color: Colors.deepPurple.withOpacity(0.6),
                  child: Row(),
                ),
                //Main Pane Section
                const Expanded(
                    child: Center(
                  child: Text("Helloooooo World"),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
