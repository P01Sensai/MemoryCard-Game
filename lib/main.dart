import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

import 'animatedSplash.dart';
import 'animatedsplash_2v.dart';
import 'splash.dart';
import 'start.dart';
//import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Card App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue,
      ),

      home:  const SplashScreen(),
      //home: const splash().
      debugShowCheckedModeBanner: false,
    );
  }
}


class MemoryCardGame extends StatefulWidget {
  const MemoryCardGame({super.key});

  @override
  MemoryCardGameState createState() => MemoryCardGameState();
}

class MemoryCardGameState extends State<MemoryCardGame> {
  int numberOfPairs = 4;

  List<Color> cardColors = [
    Colors.red, Colors.red,
    Colors.blue, Colors.blue,
    Colors.green, Colors.green,
    Colors.yellow, Colors.yellow,
    Colors.black, Colors.black,
    Colors.brown, Colors.brown,
  ];

  List<Color> cardFrontColors = List.filled(8, Colors.white);
  List<bool> cardMatched = List.filled(8, false);
  int player1Score = 0;
  int player2Score = 0;
  int currentPlayer = 1;
  int firstCardIndex = -1;
  int secondCardIndex = -1;

  @override
  void initState() {
    super.initState();
    startGame();
  }

  void startGame() {

    cardColors.shuffle();
    
    cardFrontColors = List.filled(numberOfPairs * 2, Colors.white);
    cardMatched = List.filled(numberOfPairs * 2, false);
    firstCardIndex = -1;
    secondCardIndex = -1;
    currentPlayer = 1;
  }

  void handleCardTap(int index) {
    if (cardMatched[index]) return;
    if (firstCardIndex == index || secondCardIndex == index) return;

    setState(() {
      if (firstCardIndex == -1) {
        firstCardIndex = index;
        cardFrontColors[index] = cardColors[index];
      } else {
        secondCardIndex = index;
        cardFrontColors[index] = cardColors[index];
        Timer(const Duration(milliseconds: 50), () {
          compareCards();
        });
      }
    });
  }

  void compareCards() {
    if (cardColors[firstCardIndex] == cardColors[secondCardIndex]) {
      setState(() {
        cardMatched[firstCardIndex] = true;
        cardMatched[secondCardIndex] = true;
        if (currentPlayer == 1) {
          player1Score++;
        } else {
          player2Score++;
        }
      });
    } else {
      setState(() {
        cardFrontColors[firstCardIndex] = Colors.white;
        cardFrontColors[secondCardIndex] = Colors.white;
        currentPlayer = (currentPlayer == 1) ? 2 : 1;
      });
    }

    firstCardIndex = -1;
    secondCardIndex = -1;

    if (cardMatched.every((matched) => matched)) {
      determineWinner();
    }
  }

  void showWinnerDialog(String winnerName) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Winner'),
          content: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: winnerName ,
                        style: const TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
           actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                showGameOverDialog();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void determineWinner() {
    String winnerName = '';
    if (player1Score > player2Score) {
      winnerName = 'Player 1';
    } else if (player2Score > player1Score) {
      winnerName = 'Player 2';
    } else {
      winnerName = 'Tie';
    }

    showWinnerDialog(winnerName);
  }
  void showGameOverDialog() {
    String winnerName = '';
    if (player1Score > player2Score) {
      winnerName = 'Player 1';
    } else if (player2Score > player1Score) {
      winnerName = 'Player 2';
    } else {
      winnerName = 'Tie';
    }

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Game Over'),
          content: Text('Player 1: $player1Score points\nPlayer 2: $player2Score points\nWinner: $winnerName'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                resetGame();
              },
              child: const Text('Play Again'),
            ),
            ElevatedButton(onPressed:(){
              Navigator.of(context).pop();
              closeAppUsingExit();

            },
              child : const Text('Quit'),
            ),
          ],
        );
      },
    );
  }

  // void showGameOverDialog() {
  //   String winnerName = '';
  //   if (player1Score > player2Score) {
  //     winnerName = 'Player 1';
  //   } else if (player2Score > player1Score) {
  //     winnerName = 'Player 2';
  //   } else {
  //     winnerName = 'Tie';
  //   }
  //
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text('Game Over'),
  //         content: RichText(
  //           text: TextSpan(
  //             children: [
  //               TextSpan(
  //                 text: 'Player 1: $player1Score points\nPlayer 2: $player2Score points\n\n\n',
  //                 style: TextStyle(fontSize: 16, color: Colors.black),
  //               ),
  //               TextSpan(
  //                 text: 'Winner: ',
  //                 style: TextStyle(fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
  //               ),
  //               TextSpan(
  //                 text: '$winnerName',
  //                 style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
  //               ),
  //             ],
  //           ),
  //         ),
  //         actions: [
  //           ElevatedButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //               resetGame();
  //             },
  //             child: Text('Play Again'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }



  void resetGame() {
    setState(() {
      player1Score = 0;
      player2Score = 0;
      startGame();
    });
  }
  void closeAppUsingExit() {
    _navigatetohome() async {
      await Future.delayed( const Duration(milliseconds: 1000),() {});
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>start()));
    }
    _navigatetohome();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Minor Project'),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: const Center(
                child: Text(
                  'Memory Card App',
                  style: TextStyle(fontSize: 24.0, color: Colors.blue),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  numberOfPairs = 6;
                  startGame();
                });
              },
              child: const Text('Change Number of Pairs'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlayerScoreTile(playerName: 'Player 1', playerScore: player1Score, isCurrent: currentPlayer == 1),
                PlayerScoreTile(playerName: 'Player 2', playerScore: player2Score, isCurrent: currentPlayer == 2),
              ],
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                ),
                itemCount: numberOfPairs * 2,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      handleCardTap(index);
                    },
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: const BorderSide(color: Colors.black, width: 2.0),
                      ),
                      color: cardFrontColors[index],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerScoreTile extends StatelessWidget {
  final String playerName;
  final int playerScore;
  final bool isCurrent;

  const PlayerScoreTile({super.key, required this.playerName, required this.playerScore, required this.isCurrent});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            playerName + (isCurrent ? ' *' : ''),
            style: TextStyle(
              color: isCurrent ? Colors.redAccent : Colors.black,
              fontSize: 16,
            ),
          ),
          Text(
            playerScore.toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
