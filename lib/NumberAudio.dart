import 'package:flutter/material.dart';

class NumberAudio {
  String audioUri;
  MaterialColor buttoncolor;
  String buttonText;

  NumberAudio(String aUri, MaterialColor bc, String bt) {
    this.audioUri = aUri;
    this.buttoncolor = bc;
    this.buttonText = bt;
  }
}
