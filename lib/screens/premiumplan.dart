import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vybaze_music/controller/app_state_controller.dart';
import 'package:vybaze_music/routes/app_route_names.dart';

class PremiumPlanScreen extends StatelessWidget {
  PremiumPlanScreen({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.put(AppStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("121212"),
        elevation: 0,
        title: const Text(
          "Choose premium plan",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: HexColor("121212"),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              InkWell(
                child: Card(
                  color: HexColor("181818"),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Container(
                    height: 100,
                    width: 380,
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Current Plan",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "VyBaze Music Free Plan",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.pink
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                onTap: (){
                  Get.toNamed(premiumppaymentscreen);
                },
              ),
              // ListView.builder(
              //   shrinkWrap: true,
              //   primary: false,
              //   itemBuilder: ,
              // )
            ],
          ),
        ),
      ),
    );
  }
}