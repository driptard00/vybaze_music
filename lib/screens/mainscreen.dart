import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vybaze_music/controller/app_state_controller.dart';
import 'package:vybaze_music/routes/app_route_names.dart';
import 'package:vybaze_music/screens/screenone.dart';
import 'package:vybaze_music/screens/screenthree.dart';
import 'package:vybaze_music/screens/screentwo.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.put(AppStateController());

  final List<Widget> _screens = [
    HomeSceen(),
    SearchScreen(),
    LibraryScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(
      builder: (controller) {
        return Scaffold(
          body: _screens[controller.selectedScreenIndex] ,

          bottomNavigationBar: BottomAppBar(
            color: HexColor("212121"),
            child: Container(
              height: 60,
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: (){
                      controller.selectedScreenItem(0);
                    }, 
                    icon: Icon(
                      Iconsax.home,
                      color: (controller.selectedScreenIndex == 0) ? 
                      (Colors.pink) : 
                      (Colors.grey),
                    )
                  ),
                  IconButton(
                    onPressed: (){
                      controller.selectedScreenItem(1);
                    }, 
                    icon: Icon(
                      Iconsax.search_normal, 
                      color: (controller.selectedScreenIndex == 1) ? 
                      (Colors.pink) : 
                      (Colors.grey),
                    )
                  ),                  
                  IconButton(
                    onPressed: (){
                      controller.selectedScreenItem(2);
                    }, 
                    icon: Icon(
                      Iconsax.music_library_2, 
                      color: (controller.selectedScreenIndex == 2) ? 
                      (Colors.pink) : 
                      (Colors.grey),
                    )
                  ),                  
                  IconButton(
                    onPressed: (){
                      Get.toNamed(premiumplanscreen);
                    }, 
                    icon: Stack(
                      children: [
                        const Icon(
                          Iconsax.dollar_circle,
                          color: Colors.grey
                        ),
                        Positioned(
                          right: 0,
                          bottom: 15,
                          child: Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(5)
                            ),
                          )
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          )
        );
      }
    );
  }
}