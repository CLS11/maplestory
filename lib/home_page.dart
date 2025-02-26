import 'package:flutter/material.dart';
import 'package:myapp/button.dart';
import 'package:myapp/snail.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Snail
  int snailCount = 1;
  double snailPosX = 0.5;
  String snailDirection = 'left';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue[300],
              child: Stack(
                children: [
                  Snail(
                    snailCount: snailCount, 
                    snailDirection: snailDirection,
                  ),
                ],
              ),
            ), 
          ),
          //Grass
          Container(
            color: Colors.green[600],
            height: 10,
          ),
          Expanded(
            child: Container(
              color: Colors.grey[500],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'M A P L E S T O R Y',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Button(
                          text: 'PLAY', 
                          onTap: (){},
                        ),
                      ),
                      Expanded(
                        child: Button(
                          text: 'ATTACK', 
                          onTap: (){},
                        ),
                      ),
                      Button(
                        text: 'LEFT', 
                        onTap: (){},
                      ),
                      Button(
                        text: 'JUMP', 
                        onTap: (){},
                      ),
                      Button(
                        text: 'RIGHT', 
                        onTap: (){},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}