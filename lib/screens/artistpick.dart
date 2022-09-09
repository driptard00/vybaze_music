import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vybaze_music/routes/app_route_names.dart';

class ArtistPickPage extends StatelessWidget {
  const ArtistPickPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: HexColor("121212"),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.white,
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search artists",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none 
                        )
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (){
                    Get.toNamed(mainscreen);
                  }, 
                  icon: const Icon(FontAwesomeIcons.arrowRight, color: Colors.pink, size: 20,)
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: const [
                SizedBox(
                  width: 200,
                  child: Text(
                    "Pick your 3 or more of your favs",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}