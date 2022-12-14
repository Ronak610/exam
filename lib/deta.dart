import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic Fru = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("product"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600,
              width: 500,
              alignment: Alignment.center,
              child: Image.asset("${Fru[0]}"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${Fru[1]}",
                  style: GoogleFonts.kenia(
                      fontWeight: FontWeight.bold, fontSize: 45),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "U\$ ${Fru[2]}",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.green),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context,'/',arguments: [Fru[0],Fru[1],Fru[2]]);
                    },
                    child: Text("ADD TO CART"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.shopping_cart_outlined,),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
