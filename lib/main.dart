import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main() => runApp(Chess());

class Chess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFF0097a7)),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text("Chess Game"),
              ),
              body: Center(
                child: ChessBoard(
                    boardType: BoardType.green,
                    size: 350,
                    onMove: (move) {
                      print(move);
                    },
                    onCheckMate: (color) {
                      print(color);
                    },
                    onDraw: () {
                      print("Draw !");
                    }
                ),
              ),
          ),
      ),
    );
  }

}
