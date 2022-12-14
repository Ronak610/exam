import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imag = [
    "assets/image/apple.png",
    "assets/image/banana.png",
    "assets/image/broccoli.png",
    "assets/image/carrot.png",
    "assets/image/kiwi.png",
    "assets/image/orange.png",
    "assets/image/peppers.png",
    "assets/image/strawberry.png",
    "assets/image/watermelon.png"
  ];
  List<String> name = [
    "apple",
    "banana",
    "broccoli",
    "carrot",
    "kiwi",
    "orange",
    "peppers",
    "strawberry",
    "watermelon"
  ];
  List<String> price = [
    "5.2",
    "3.2",
    "6.2",
    "3.2",
    "4.5",
    "1.3",
    "5.3",
    "3.3",
    "4.3",
  ];

  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute
        .of(context)!
        .settings
        .arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Fruits"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap:(){Navigator.pushNamed(context,'s',arguments:[data[0],data[1],data[2]]);},
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GridView.builder(
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "${imag[index]}",
                          fit: BoxFit.fill,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 160, left: 10),
                      child: Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "${name[index]}",
                                  style: GoogleFonts.kenia(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "U\$${price[index]}",
                                  style: GoogleFonts.lato(
                                      color: Colors.green,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'd', arguments: [
                                    imag[index],
                                    name[index],
                                    price[index]
                                  ]);
                                },
                                child: Container(
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 14,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width / 11,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                    ),
                                  ),
                                  child: Icon(
                                    Icons.shopping_bag,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          decoration: BoxDecoration(color: Colors.black12),
        ),
      ),
    );
  }
}
