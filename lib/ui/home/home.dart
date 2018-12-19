import 'package:flutter/material.dart';
import 'package:h2e_music/ui/home/app_home.dart';
import 'package:nima/nima_actor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  AnimationController animationController;
  Animation animation;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 2000));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut)
          ..addListener(() => setState(() {}));
          animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          color: Colors.white,
          child: new SplashScreen(
            animation: animation,
          ),
        ),
        AppHome(),
      ],
    ));
  }
}

class SplashScreen extends StatelessWidget {
  final Animation animation;
  const SplashScreen({Key key, this.animation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        
        Positioned(
          bottom: size.width/2 * animation.value ,
                  child: Opacity(
                    opacity: 1.0 * animation.value,
                                      child: Column(
            children: <Widget>[
              Container(
                height:150.0 ,
                width: 150.0,
                decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle
                ),
              )
            ],
          ),
                  ),
        ),
        Positioned(
          bottom: size.width/2 + 75 * animation.value,
          right: 0.0,
                  child: Opacity(
                    opacity: 1.0 * animation.value,
                                      child: Column(
            children: <Widget>[
              Container(
                height:150.0,
                width: 150.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle
                ),
              )
            ],
          ),
                  ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: new NimaActor("assets/manhe.nma",
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: "manhe_animate"),
          ),
        ),

      ],
    );
  }
}
