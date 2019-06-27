import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();
  List<NumberAudio> numberList = [
    NumberAudio("one.wav", Colors.red, "One"),
    NumberAudio("two.wav", Colors.teal, "two"),
    NumberAudio("three.wav", Colors.yellow, "three"),
    NumberAudio("four.wav", Colors.orange, "four"),
    NumberAudio("five.wav", Colors.pink, "five"),
    NumberAudio("six.wav", Colors.green, "six"),
    NumberAudio("seven.wav", Colors.amber, "seven"),
    NumberAudio("eight.wav", Colors.blue, "eight"),
    NumberAudio("nine.wav", Colors.brown, "nine"),
    NumberAudio("ten.wav", Colors.cyan, "ten"),
  ];
  play(String uri) {
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish Number Audio App'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage("images/logo.png"),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(20.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.0,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: numberList.length,
                  itemBuilder: (context, i) => SizedBox(
                        height: 50.0,
                        width: 100.0,
                        child: RaisedButton(
                          color: numberList[i].buttoncolor,
                          child: Text(
                            numberList[i].buttonText,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            this.play(numberList[i].audioUri);
                          },
                        ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
