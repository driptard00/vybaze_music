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


class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

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
                "Login",
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
                            labelText: "Email or Username",
                            labelStyle: const TextStyle(color: Colors.white),
                            floatingLabelStyle: const TextStyle(color: Colors.pink),
                          ),
                          onChanged: (value){
                            controller.updateEmail(value);
                          },
                          keyboardType: TextInputType.emailAddress,
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
                            labelText: "Password",
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
                        Row(
                          children: [
                            TextButton(
                              onPressed: (){
                                Get.toNamed(forgotpasswordscreen);
                              },
                              child: const Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                  color: Colors.pink,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 70,),
                        SizedBox(
                          height: 50,
                          width: 400,
                          child: ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.pink,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 70,),
                        const Text(
                          "Don't have an account ?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Get.toNamed(registerscreen);
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.pink,
                            ),
                          ),
                        )
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