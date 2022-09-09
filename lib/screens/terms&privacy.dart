import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vybaze_music/controller/app_state_controller.dart';

class TermsAndPrivacy extends StatelessWidget {
  TermsAndPrivacy({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.put(AppStateController());

  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: HexColor("121212"),
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.pink,),
          ),
          title: const Text("T/C AND PRIVACY", style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity - 40, 45),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                   color: Colors.black,
                   border: Border.all(color: Colors.pink),
                   borderRadius: BorderRadius.circular(10)
                ),
                child: TabBar(
                  unselectedLabelColor: Colors.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink
                  ),
                  tabs: const [
                    SizedBox(
                      height: 50,
                      child: Center(child: Text("Terms & Condition")),
                    ),
                    SizedBox(
                      height: 20,
                      child: Center(child: Text("Privacy")),
                    ),
                  ]
                  ),
              ),
            ),
            )
        ),
        body: TabBarView(
          children: [
            Expanded(
              child: Container(
                color: HexColor("121212"),
                child: const Center(child: Text("Tab 1")),
              )
            ),
            Expanded(
              child: Container(
                color: HexColor("121212"),
                child: const Center(child: Text("Tab 2")),
              )
            ),
          ],
        ),
      ),
    );
  }
}