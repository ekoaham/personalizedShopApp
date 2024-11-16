import 'package:flutter/material.dart';
import 'before_navigation.dart';
import 'shop_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = '1';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
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
                  image: AssetImage('images/pic0.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken)),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  // CircleAvatar(
                  //   foregroundColor: Colors.black54,
                  //   backgroundImage: AssetImage('images/bookstore.png'),
                  //   radius: 60,
                  // ),
                  Container(
                    height: 350,
                    child: const Center(
                      child: Text(
                        'Welcome!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 60),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(40, 5, 40, 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.alphaBlend(Colors.indigo, Colors.transparent)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){return ShopScreen();}));
                      },
                      child: const Text('Continue online',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context){return BeforeNavigationScreen();}));
                      },
                      child: const Text(
                        'Visit Offline',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
