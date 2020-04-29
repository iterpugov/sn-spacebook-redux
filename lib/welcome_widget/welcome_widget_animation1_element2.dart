/*
*  welcome_widget_animation1_element2.dart
*  SpacebookRedux2Anim
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:spacebook_redux2_anim/values/values.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';

Animation<double> _createOpacityProperty(AnimationController animationController) => Interpolation<double>(keyframes: [
  Keyframe<double>(fraction: 0, value: 1),
  Keyframe<double>(fraction: 0.00001, value: 0.3),
  Keyframe<double>(fraction: 1, value: 1),
]).animate(CurvedAnimation(
  curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
  parent: animationController,
));


class WelcomeWidgetAnimation1Element2 extends StatelessWidget {
  
  WelcomeWidgetAnimation1Element2({
    Key key,
    this.child,
    @required AnimationController animationController
  }) : assert(animationController != null),
       this.opacity = _createOpacityProperty(animationController),
       super(key: key);
  
  final Animation<double> opacity;
  final Widget child;
  
  
  @override
  Widget build(BuildContext context) {
  
    return AnimatedBuilder(
      animation: Listenable.merge([
        this.opacity,
      ]),
      child: this.child,
      builder: (context, widget) {
      
        return Opacity(
          opacity: this.opacity.value,
          child: widget,
        );
      },
    );
  }
}