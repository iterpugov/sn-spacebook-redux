/*
*  gradients.dart
*  SpacebookRedux2Anim
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/rendering.dart';


class Gradients {
  static const Gradient customgradient = LinearGradient(
    begin: Alignment(0.5, 0),
    end: Alignment(0.5, 1),
    stops: [
      0,
      1,
    ],
    colors: [
      Color.fromARGB(255, 255, 230, 0),
      Color.fromARGB(255, 9, 0, 255),
    ],
  );
}