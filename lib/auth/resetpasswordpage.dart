import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:vybaze_music/controller/auth_state_controller.dart';
import 'package:vybaze_music/routes/app_route_names.dart';


class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);

  final AuthStateController _authStateController = Get.put(AuthStateController());
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: HexColor("121212"),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
              InkWell(
                onTap: (){
                  Get.back();
                }, 
                child: const Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(height: 50,),
              Image.asset(
                "lib/img/vybazelogo.png",
                color: Colors.pink,
              ),
              const SizedBox(height: 40,),
              const Text(
                "Reset Password",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30, 
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 50,),
              GetBuilder<AuthStateController>(
                builder: (controller){
                  return Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            labelText: "New Password",
                            labelStyle: const TextStyle(color: Colors.white),
                            floatingLabelStyle: const TextStyle(color: Colors.pink),
                            suffixIcon: IconButton(
                              onPressed: (){
                                controller.togglePassword();
                              },
                               icon: Icon(
                                 (controller.hidePassword == true) ? 
                                 (
                                   FontAwesomeIcons.eye
                                 ) : 
                                 (
                                   FontAwesomeIcons.eyeSlash
                                 ),
                                 color: Colors.pink,
                                )
                              )
                          ),
                          obscureText: controller.hidePassword,
                          onChanged: (value){
                            controller.updatePassword(value);
                          },
                        ),
                        const SizedBox(height: 20,),
                        TextFormField(
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.pink,
                              ),
                              borderRadius: BorderRadius.circular(10)
                            ),
                            labelText: "Confirm new password",
                            labelStyle: const TextStyle(color: Colors.white),
                            floatingLabelStyle: const TextStyle(color: Colors.pink),
                            suffixIcon: IconButton(
                              onPressed: (){
                                controller.togglePassword();
                              },
                               icon: Icon(
                                 (controller.hidePassword == true) ? 
                                 (
                                   FontAwesomeIcons.eye
                                 ) : 
                                 (
                                   FontAwesomeIcons.eyeSlash
                                 ),
                                 color: Colors.pink,
                                )
                              )
                          ),
                          obscureText: controller.hidePassword,
                          onChanged: (value){
                            controller.updatePassword(value);
                          },
                        ),
                        const SizedBox(height: 70,),
                        SizedBox(
                          height: 50,
                          width: 400,
                          child: ElevatedButton(
                            onPressed: (){
                              Get.toNamed(loginscreen);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.pink,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}