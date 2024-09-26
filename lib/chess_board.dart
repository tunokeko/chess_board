import 'package:flutter/material.dart';

class ChessBoard extends StatelessWidget {
  const ChessBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder
        (
          itemCount: 64,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), 
          itemBuilder: (BuildContext context, int index) {
            Color color;
            int rowNumber = (index / 8).floor();
            
            if(rowNumber % 2 == 0) {
              color = index % 2 == 0 ? Colors.white : Colors.black;
            } else {
              color = index % 2 == 0 ? Colors.black : Colors.white;
            }

            return Container(
              color: color,
            );
          }
        )
        ,
      ),
    );
  }
}