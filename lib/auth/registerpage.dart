import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:vybaze_music/controller/auth_state_controller.dart';
import 'package:vybaze_music/routes/app_route_names.dart';
import 'package:vybaze_music/screens/terms&privacy.dart';

class RegPage extends StatelessWidget {
  RegPage({Key? key}) : super(key: key);

  final AuthStateController _authStateController = Get.find<AuthStateController>();
  final GlobalKey<FormState> _formKey = GlobalKey();
  String dateOfBirth = "";
  final TextEditingController dateController = TextEditingController();

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
                "Sign Up",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 180,
                              child: TextFormField(
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
                                  labelText: "Firstname",
                                  labelStyle: const TextStyle(color: Colors.white),
                                  floatingLabelStyle: const TextStyle(color: Colors.pink),
                                ),
                                onChanged: (value){
                                  controller.updateFirstName(value);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 180,
                              child: TextFormField(
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
                                  labelText: "Lastname",
                                  labelStyle: const TextStyle(color: Colors.white),
                                  floatingLabelStyle: const TextStyle(color: Colors.pink),
                                ),
                                onChanged: (value){
                                  controller.updateLastName(value);
                                },
                              ),
                            ),
                          ],
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
                            labelText: "Email",
                            labelStyle: const TextStyle(color: Colors.white),
                            floatingLabelStyle: const TextStyle(color: Colors.pink),
                          ),
                          onChanged: (value){
                            controller.updateEmail(value);
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 180,
                              child: TextFormField(
                                controller: dateController,
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
                                  labelText: "Date of Birth",
                                  labelStyle: const TextStyle(color: Colors.white),
                                  floatingLabelStyle: const TextStyle(color: Colors.pink),
                                ),
                                onChanged: (value){
                                },
                                onTap: (){
                                  FocusScope.of(context).requestFocus(FocusNode());
                                  showDateTimePicker(context);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 180,
                              child: TextFormField(
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
                                  labelText: "Phone number",
                                  labelStyle: const TextStyle(color: Colors.white),
                                  floatingLabelStyle: const TextStyle(color: Colors.pink),
                                ),
                                onChanged: (value){
                                  controller.updatePhoneNumbervalue(value);
                                },
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                          ],
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
                        const SizedBox(height: 30,),
                        const Text(
                          "By clicking the sign up button below,",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "I agree to",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                              ),
                            ),
                            TextButton(
                              onPressed: (){
                                Get.to(()=> TermsAndPrivacy());
                              },
                              child: const Text(
                                "Terms of Service and Privacy Policy",
                                style: TextStyle(
                                  color: Colors.pink,
                                  fontSize: 12
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          width: 400,
                          child: ElevatedButton(
                            onPressed: (){
                              Get.toNamed(emailverification);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.pink,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                            ),
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        const Text(
                          "Already a member ?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Get.toNamed(loginscreen);
                          },
                          child: const Text(
                            "Sign In",
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
  Future<void> showDateTimePicker (BuildContext context) async{
    var dob = await showDatePicker(
      context: context, 
      initialDate: (dateOfBirth != "") ? 
      (DateTime.parse(dateOfBirth)) : 
      (DateTime.now()),
      firstDate: DateTime(1950, 01, 01), 
      lastDate: DateTime(2022, 01, 01).add(const Duration(days: 365))
    );
    if(dob != null){
      DateFormat dateFormat = DateFormat("yyyy/MM/dd");
      String formattedDate = dateFormat.format(dob);

      dateOfBirth = formattedDate;
      dateController.text = DateFormat("dd-MM-yyyy").format(dob);
    }
  }
}