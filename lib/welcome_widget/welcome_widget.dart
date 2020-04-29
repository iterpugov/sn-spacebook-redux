/*
*  welcome_widget.dart
*  SpacebookRedux2Anim
*
*  Created by Supernova.
*  Copyright © 2018 Supernova. All rights reserved.
    */

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:spacebook_redux2_anim/login_widget/login_widget.dart';
import 'package:spacebook_redux2_anim/styles/custom_style.dart';
import 'package:spacebook_redux2_anim/values/values.dart';
import 'package:spacebook_redux2_anim/welcome_widget/welcome_widget_animation1_element1.dart';
import 'package:spacebook_redux2_anim/welcome_widget/welcome_widget_animation1_element2.dart';


class WelcomeWidget extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _WelcomeWidgetState();
}


class _WelcomeWidgetState extends State<WelcomeWidget> with TickerProviderStateMixin {
  AnimationController logoImageAnimationController;
  AnimationController logInButtonAnimationController;
  
  @override
  void initState() {
  
    super.initState();
    
    this.logoImageAnimationController = AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    this.logInButtonAnimationController = AnimationController(duration: Duration(milliseconds: 850), vsync: this);
    
    this.startAnimationOne();
  }
  
  @override
  void dispose() {
  
    super.dispose();
    
    this.logoImageAnimationController.dispose();
    this.logInButtonAnimationController.dispose();
  }
  
  void onSignUpPressed(BuildContext context) {
  
  }
  
  void onLogInPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginWidget()));
  
  void startAnimationOne() {
  
    this.logoImageAnimationController.forward();
    this.logInButtonAnimationController.forward();
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.31089, 1.09827),
            end: Alignment(0.68911, -0.09827),
            stops: [
              0,
              1,
            ],
            colors: [
              Color.fromARGB(255, 248, 132, 98),
              Color.fromARGB(255, 140, 28, 140),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: WelcomeWidgetAnimation1Element1(
                  animationController: this.logoImageAnimationController,
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(51, 0, 0, 0),
                          offset: Offset(0, 20),
                          blurRadius: 25,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/logo.png",
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: Text(
                  "Spacebook",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    fontSize: 42,
                    letterSpacing: -1,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Conquer the stars\nfrom behind the screen.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 85),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 148,
                    height: 60,
                    child: CustomStyleButton(
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      padding: EdgeInsets.all(0),
                      onPressed: () => this.onSignUpPressed(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/icon-sign-up.png",),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "SIGN UP",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Trebuchet MS",
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 148,
                    height: 60,
                    child: WelcomeWidgetAnimation1Element2(
                      animationController: this.logInButtonAnimationController,
                      child: FlatButton(
                        onPressed: () => this.onLogInPressed(context),
                        color: Color.fromARGB(255, 255, 255, 255),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2)),
                        ),
                        textColor: Color.fromARGB(255, 219, 104, 110),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/icon-log-in.png",),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "LOG IN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(255, 219, 104, 110),
                                fontFamily: "Lato",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "© 2050 Supernova Studio",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.accentText,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}