import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:supernova_flutter_ui_toolkit/keyframes.dart';

Animation<double> _createTranslateYProperty(
        AnimationController animationController) =>
    Interpolation<double>(
      keyframes: [
        Keyframe<double>(fraction: 0, value: 0),
        Keyframe<double>(fraction: 0.00001, value: 300),
        Keyframe<double>(fraction: 0.85, value: 0),
      ],
    ).animate(CurvedAnimation(
      curve: Interval(0, 1, curve: Cubic(0.29, 0.8723544034090909, 1, 1)),
      parent: animationController,
    ));

Animation<double> _createOpacityProperty(
        AnimationController animationController) =>
    Interpolation<double>(
      keyframes: [
        Keyframe<double>(fraction: 0, value: 0),
        Keyframe<double>(fraction: 0.00001, value: 0),
        Keyframe<double>(fraction: 0.35, value: 1),
      ],
    ).animate(CurvedAnimation(
      curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
      parent: animationController,
    ));

Animation<double> _createRotateZProperty(
        AnimationController animationController) =>
    Interpolation<double>(
      keyframes: [
        Keyframe<double>(fraction: 0, value: 0),
        Keyframe<double>(fraction: 0.00001, value: -45),
        Keyframe<double>(fraction: 0.7, value: -45),
        Keyframe<double>(fraction: 1, value: 0),
      ],
    ).animate(CurvedAnimation(
      curve: Interval(0, 1, curve: Cubic(0.42, 0, 0.58, 1)),
      parent: animationController,
    ));

class A7Q9yOWOWidgetAnimation extends StatelessWidget {
  A7Q9yOWOWidgetAnimation(
      {Key key, this.child, @required AnimationController animationController})
      : assert(animationController != null),
        this.translateY = _createTranslateYProperty(animationController),
        this.opacity = _createOpacityProperty(animationController),
        this.rotateZ = _createRotateZProperty(animationController),
        super(key: key);

  final Animation<double> translateY;
  final Animation<double> opacity;
  final Animation<double> rotateZ;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return null;
  }
}
