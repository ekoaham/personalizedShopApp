import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override

  List urlImages = [
    {"id" : 1, "image":'images/picture3.jpeg'},
    {"id" : 2, "image":'images/picture1.jpg'},
    {"id" : 3, "image":'images/picture2.jpeg'}
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Center(
          child: Text(
            'Shop',
            // textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: CarouselSlider(
                items: urlImages.map(
                        (item) => Container(
                      width: double.infinity,
                      child: Image.asset(
                        item['image'],
                        fit: BoxFit.fill,
                      ),
                    )
                ).toList(),
                options: CarouselOptions(
                    autoPlay: true,
                    height: 250,
                    enlargeFactor: double.maxFinite,
                    viewportFraction: 1.0
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        color: const Color.fromRGBO(255, 0, 0, 0.2),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                              child: Image(
                                  height: 190,
                                  image: AssetImage(
                                      "images/picture1.jpg"
                                  )
                              ),
                            ),
                            const Text('Purchase This'),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color.alphaBlend(Colors.indigo, Colors.transparent)),
                              ),
                              onPressed: () {},
                              child: const Text('Add to Cart',
                                style: TextStyle(fontSize: 18),),
                            ),
                          ],
                        ),

                      ),
                        const SizedBox(
                          width: 30,
                        ),
                        Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                        color: const Color.fromRGBO(255, 0, 0, 0.2),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                              child: Image(
                                  height: 190,
                                  image: AssetImage(
                                      "images/picture1.jpg"
                                  )
                              ),
                            ),
                            const Text('Purchase This'),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color.alphaBlend(Colors.indigo, Colors.transparent)),
                              ),
                              onPressed: () {},
                              child: const Text('Add to Cart',
                                style: TextStyle(fontSize: 18),),
                            ),
                          ],
                        ),

                      ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                          color: const Color.fromRGBO(255, 0, 0, 0.2),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                                child: Image(
                                    height: 190,
                                    image: AssetImage(
                                        "images/picture1.jpg"
                                    )
                                ),
                              ),
                              const Text(
                                'Purchase This'
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color.alphaBlend(Colors.indigo, Colors.transparent)),
                                ),
                                onPressed: () {},
                                child: const Text('Add to Cart',
                                  style: TextStyle(
                                      fontSize: 18,
                                 ),
                                ),
                              ),
                            ],
                          ),

                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                          color: const Color.fromRGBO(255, 0, 0, 0.2),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
                                child: Image(
                                    height: 190,
                                    image: AssetImage(
                                        "images/picture1.jpg"
                                    )
                                ),
                              ),
                              const Text('Purchase This'),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color.alphaBlend(Colors.indigo, Colors.transparent)),
                                ),
                                onPressed: () {},
                                child: const Text('Add to Cart',
                                  style: TextStyle(fontSize: 18),),
                              ),
                            ],
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
