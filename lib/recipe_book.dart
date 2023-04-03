import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:umma_kitchen/home_screen.dart';

class RecipeBook extends StatefulWidget {
  const RecipeBook({super.key});

  @override
  State<RecipeBook> createState() => _RecipeBookState();
}

class _RecipeBookState extends State<RecipeBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Recipe Book",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purpleAccent])),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hi Umma!",
                    style: TextStyle(
                      fontFamily: "Philosopher",
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 20),
                    child: const Text(
                      "Yuk intip Menu Rekomendasi, yang tentunya bikin Umma, tambah #JagoMasak.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "MENU FAVORIT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        color: Colors.redAccent,
                      )
                    ],
                  ),
                  SizedBox(
                      height: 150,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Image.asset(
                                    "assets/images/slider/nasi-kebuli.jpeg"),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Image.asset(
                                    "assets/images/slider/pindang-patin.jpeg"),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Image.asset(
                                      "assets/images/slider/rendang.jpeg")),
                            ),
                          ],
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "• NASI KEBULI",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Icon(
                        Icons.line_weight_rounded,
                        color: Colors.black26,
                      )
                    ],
                  ),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black12,
                            width: 2,
                          )),
                      child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: [
                              const Text(
                                  "Nasi Kebuli adalah makanan khas dari Timur Tengah, terutama populer di negara-negara Arab seperti Arab Saudi, Yaman, Kuwait, Qatar, dan lain-lain. Makanan ini juga populer di Indonesia, terutama di daerah Aceh dan Sumatra Barat yang memiliki pengaruh budaya Timur Tengah."),
                              Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 5)),
                              const Text(
                                  "Nasi Kebuli terbuat dari nasi yang dimasak dengan rempah-rempah dan daging kambing atau domba yang dimasak dengan bumbu khas. Bumbu Kebuli terdiri dari bawang merah, bawang putih, jahe, kunyit, kayu manis, cengkeh, kapulaga, dan lada. Bumbu ini dicampur dengan daging dan ditumis sampai daging empuk. Kemudian nasi dimasak dengan bumbu ini hingga berwarna kekuningan. Setelah itu, nasi dan daging Kebuli disajikan dengan potongan kentang goreng, irisan mentimun, dan acar. Rasa khas Nasi Kebuli ...............................")
                            ],
                          )))
                ],
              ),
            ),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Alert(
            context: context,
            type: AlertType.error,
            title: "Oops!",
            desc: "Maaf, Umma belum terdaftar sebagai member.",
            buttons: [
              DialogButton(
                color: Colors.deepPurpleAccent,
                child: Text(
                  "Daftar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Alert(
                    context: context,
                    type: AlertType.error,
                    title: "Afwan",
                    desc: "Pendaftaran Member Belum Dibuka :(",
                    buttons: [
                      DialogButton(
                        color: Colors.deepPurpleAccent,
                        child: Text(
                          "Mengerti",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ExpandedFlexiblePage()));
                        },
                        width: 120,
                      )
                    ],
                  ).show();
                },
                width: 120,
              )
            ],
          ).show();
        },
        backgroundColor: Colors.purpleAccent,
        label: Text(
          "Detail Resep",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        tooltip: "Cari Resep",
        icon: Icon(Icons.search_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
