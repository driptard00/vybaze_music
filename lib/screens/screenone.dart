import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vybaze_music/controller/app_state_controller.dart';
import 'package:vybaze_music/routes/app_route_names.dart';
import 'package:vybaze_music/widgets/bottomSheet1.dart';

class HomeSceen extends StatelessWidget {
  HomeSceen({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.find<AppStateController>();
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AppStateController>(
        builder: (controller) {
          return Container(
            height: Get.height,
            width: Get.width,
            color: HexColor("121212"),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hey, Oluwaseun",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),            
                          const SizedBox(height: 5,),
                          Text(
                            controller.info[random.nextInt(controller.info.length)],
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: HexColor("212121"),
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: const Icon(Iconsax.notification, color: Colors.white,),
                            ),
                          ),
                          const SizedBox(width: 10,),
                          InkWell(
                            onTap: (){
                              Get.toNamed(settingsreen);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: HexColor("212121"),
                                borderRadius: BorderRadius.circular(25)
                              ),
                              child: const Icon(Iconsax.setting, color: Colors.white,),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Made for you",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 25,),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Stack(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 120,
                                          width: Get.width,
                                        decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15),),
                                        color: Colors.black,
                                        image: DecorationImage(
                                          image: AssetImage("lib/img/breezy.jfif"), fit: BoxFit.cover
                                        )
                                        ),
                                        ),
                                        Container(
                                          height: 80,
                                          width: Get.width,
                                          padding: EdgeInsets.all(10),
                                          // alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15),),
                                          color: HexColor("212121")
                                        ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Breezy",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white
                                                ),
                                              ),
                                              const Text(
                                                "Chris Brown",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.pink
                                                ),
                                              ),
                                              Row(
                                                children: const [
                                                  Text(
                                                    "2022",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.grey
                                                    ),
                                                  ),
                                                  SizedBox(width: 5,),
                                                  CircleAvatar(
                                                    backgroundColor: Colors.grey,
                                                    radius: 3,
                                                  ),
                                                  SizedBox(width: 5,),
                                                  Text(
                                                    "Album",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color: Colors.grey
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                        bottom: 60,
                                        right: 10,
                                        child: SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: FloatingActionButton(
                                            onPressed: (){
                                              showBottomSheet(
                                                enableDrag: false,
                                                context: context, 
                                                builder: (context)=> AppBottomSheet1()
                                              );
                                            },
                                            backgroundColor: Colors.white,
                                            child: const Icon(Iconsax.play, color: Colors.black,),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            );
                          })
                        ),
                      ),
                      const SizedBox(height: 25,),
                      const Text(
                        "Latest",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 25,),
                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Container(
                                  height: 200,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Stack(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height: 120,
                                            width: Get.width,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15),),
                                                color: Colors.black,
                                                image: DecorationImage(
                                                    image: AssetImage("lib/img/N95.jfif"), fit: BoxFit.cover
                                                )
                                            ),
                                          ),
                                          Container(
                                            height: 80,
                                            width: Get.width,
                                            padding: const EdgeInsets.all(10),
                                            // alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15),),
                                              color: HexColor("212121"),
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  "Mr morales & the big steppers",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white
                                                  ),
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                                const Text(
                                                  "Kendrick lamar",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.pink
                                                  ),
                                                ),
                                                Row(
                                                  children: const [
                                                    Text(
                                                      "2022",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey
                                                      ),
                                                    ),
                                                    SizedBox(width: 5,),
                                                    CircleAvatar(
                                                      backgroundColor: Colors.grey,
                                                      radius: 3,
                                                    ),
                                                    SizedBox(width: 5,),
                                                    Text(
                                                      "Album",
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                          bottom: 60,
                                          right: 10,
                                          child: SizedBox(
                                            height: 50,
                                            width: 50,
                                            child: FloatingActionButton(
                                              onPressed: (){},
                                              backgroundColor: Colors.white,
                                              child: const Icon(Iconsax.play, color: Colors.black,),
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            })
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        }
      ),
      // bottomSheet: BottomSheet(
      //   onClosing: (){}, 
      //   builder: (context)=> PlayBottomSheet.showPlayBottomSheet(),
      // )
    );
  }
}