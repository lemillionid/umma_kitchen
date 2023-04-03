import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:umma_kitchen/recipe_book.dart';

final List<String> imgList = [
  'https://www.astronauts.id/blog/wp-content/uploads/2023/03/Resep-Rendang-Daging-Sapi-Untuk-Lebaran-Gurih-dan-Nikmat-1200x900.jpg',
  'https://d12man5gwydfvl.cloudfront.net/wp-content/uploads/2017/07/Resep-Ratatouille-Kentang-Ala-Prancis-Yang-Bisa-Dibuat-Kurang-Dari-30-Menit.jpg',
  'https://img-global.cpcdn.com/recipes/270d0a0df7d829df/1200x630cq70/photo.jpg',
  'https://ihatec.com/wp-content/uploads/2022/07/sushi-gabfaca3ee_1280-1jpg-20211216061018.jpg',
  'https://i0.wp.com/rasabunda.com/wp-content/uploads/2022/08/Nasi-Kebuli-Kambing.jpg?fit=480%2C600&ssl=1',
  'https://cdn0-production-images-kly.akamaized.net/IhYCITNBFLRcxpn6H3bcHf3OcnY=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2468680/original/088277400_1543256713-resep-sederhana-spaghetti-super-lezat-bis-dibuat-di-rumah.jpg'
];

// class HomeScreen extends StatelessWidget {
//  const HomeScreen({Key? key}) : super(key: key);

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ondakwah App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi Umma!"),
          centerTitle: true,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.purpleAccent])),
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepPurple, Colors.purpleAccent]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Image.asset(
                          "assets/images/image2.png",
                          width: 350,
                        ),
                        Text(
                          "Selamat Datang di",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "Umma's Kitchen",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Philosopher",
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 30,
                  left: 10,
                  right: 10,
                ),
                child: Column(
                  children: [
                    const Text(
                      "Yuk Eksplorasi Resep Makanan yang ada di Seluruh Dunia! Saatnya UMMA Jago Masak!",
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Container(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          viewportFraction: 0.8,
                          enlargeCenterPage: true,
                        ),
                        items: imgList
                            .map((item) => Container(
                                  child: Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        child: Stack(
                                          children: <Widget>[
                                            Image.network(item,
                                                fit: BoxFit.cover,
                                                width: 1000.0),
                                            Positioned(
                                              bottom: 0.0,
                                              left: 0.0,
                                              right: 0.0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color.fromARGB(
                                                          200, 0, 0, 0),
                                                      Color.fromARGB(0, 0, 0, 0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    end: Alignment.topCenter,
                                                  ),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10.0,
                                                    horizontal: 20.0),
                                                child: Text(
                                                  'Resep Pilihan',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 10,
                        right: 10,
                      ),
                      child: Text(
                        "Temukan Banyak Resep Pilihan, yang mudah untuk diaplikasikan ke 'DAPUR UMMA'.",
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )),
        floatingActionButton: MediaQuery.of(context).size.width < 600
            ? FloatingActionButton.extended(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RecipeBook()));
                },
                label: Text("Let's Get Started!"),
                icon: Icon(Icons.arrow_circle_right_rounded),
              )
            : Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RecipeBook()));
                  },
                  label: Text("Let's Get Started!"),
                  icon: Icon(Icons.arrow_circle_right_rounded),
                ),
              ),
        floatingActionButtonLocation: MediaQuery.of(context).size.width < 600
            ? FloatingActionButtonLocation.centerFloat
            : null,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
