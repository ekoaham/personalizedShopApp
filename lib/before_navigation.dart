import 'package:flutter/material.dart';
import 'loading_screen.dart';

class BeforeNavigationScreen extends StatefulWidget {
  const BeforeNavigationScreen({super.key});
  static const String id = '2';

  @override
  State<BeforeNavigationScreen> createState() => _BeforeNavigationScreenState();
}

class _BeforeNavigationScreenState extends State<BeforeNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Colors.black, Colors.black12],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ).createShader(bounds),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/navigationPanel.png'),
                  fit: BoxFit.cover,
                  colorFilter:
                  ColorFilter.mode(Colors.black54, BlendMode.darken)),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget>[
              Container(
                height: 550,
                child: const Center(
                  child: Text(
                    'For offline select from below:',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.alphaBlend(Colors.indigo, Colors.transparent)),
                  onPressed: () {},
                  child: const Text('Knows direction',
                    style: TextStyle(fontSize: 18),),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.alphaBlend(Colors.blueGrey, Colors.transparent)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){return LocationScreen();}));
                  },
                  child: const Text(
                    'Needs Direction',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
