import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:vybaze_music/controller/app_state_controller.dart';

class PremiumPayment extends StatelessWidget {
  PremiumPayment({Key? key}) : super(key: key);

  final AppStateController _appStateController = Get.find<AppStateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("121212"),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Choose payment method",          
          style: TextStyle(
            fontSize: 15,
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: GetBuilder<AppStateController>(
        builder: (controller) {
          return Container(
            height: Get.height,
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: HexColor("121212"),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "VyBaze Music Student Plan",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.pink
                  ),
                ),           
                const SizedBox(
                  height: 20,
                ),            
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "400",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),
                    ),         
                    SizedBox(width: 5,),   
                    Text(
                      "/ month",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),
                    ), 
                  ],
                ), 
                const SizedBox(
                  height: 50,
                ),  
                InkWell(
                  onTap: (() {
                    controller.updateShowForm2(false);
                    controller.toggleShowForm();
                  }),
                  child: (controller.showForm == false) ? 
                  (
                    Container(
                      height: 100,
                      width: 370,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: HexColor("212121"),
                        borderRadius: BorderRadius.circular(20)
                      ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Credit Card",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                              ),
                            ),                             
                            Text(
                              "Mastercard, Visa......",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white
                              ),
                            ), 
                          ],
                        ),
                        const Icon(Iconsax.card, color: Colors.white, size: 30,)
                      ],
                    ),
                    )
                  ) : 
                  (
                    Container(
                      height: 410,
                      width: 370,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: HexColor("212121"),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Credit Card",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white
                                    ),
                                  ),                             
                                  Text(
                                    "Mastercard, Visa......",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white
                                    ),
                                  ), 
                                ],
                              ),
                              const Icon(Iconsax.card, color: Colors.white, size: 30,)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  decoration: const InputDecoration(
                                    labelText: "Fullname",
                                    labelStyle: TextStyle(color: Colors.white),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white
                                      )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white
                                      )
                                    ),
                                  ),
                                ),        
                                const SizedBox(height: 10,),                        
                                TextFormField(
                                style: const TextStyle(color: Colors.white),
                                 decoration: const InputDecoration(
                                    labelText: "Card number",
                                    labelStyle: TextStyle(color: Colors.white),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white
                                      )
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.white
                                      )
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      child: TextFormField(
                                        style: const TextStyle(color: Colors.white),
                                        keyboardType: TextInputType.datetime,
                                        decoration: const InputDecoration(
                                            labelText: "Expr. date",
                                            hintText: "MM/YY",
                                            labelStyle: TextStyle(color: Colors.white),
                                            hintStyle: TextStyle(color: Colors.grey),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.white
                                              )
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.white
                                              )
                                            ),
                                          ),
                                      ),
                                    ),                                
                                    SizedBox(
                                      width: 150,
                                      child: TextFormField(
                                      style: const TextStyle(color: Colors.white),
                                      decoration: const InputDecoration(
                                          labelText: "CVV",
                                          hintText: "e.g 111",
                                          labelStyle: TextStyle(color: Colors.white),
                                          hintStyle: TextStyle(color: Colors.grey),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white
                                            )
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Colors.white
                                            )
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: controller.checkBox, 
                                      onChanged: (value){
                                        controller.updateCheckBox();
                                      },
                                      activeColor: Colors.pink,
                                      shape: const RoundedRectangleBorder(
                                        // borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 260,
                                      child: Text(
                                        "I constent to the 1 month free month trial, and i agree that unless i cancel my plan before the trial ends that i will be deducted 400",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 20,),
                                TextButton(
                                  onPressed: (){}, 
                                  child: const Text(
                                    "Proceed",
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 15
                                    ),
                                  )
                                )
                              ],
                            )
                          )
                        ],
                      ),
                    )
                  )
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: (() {
                    controller.updateShowForm1(false);
                    controller.toggleShowForm2();
                  }),
                  child: (controller.showForm2 == false) ? 
                  (
                    Container(
                      height: 100,
                      width: 370,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: HexColor("212121"),
                        borderRadius: BorderRadius.circular(20)
                      ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Paypal",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white
                          ),
                        ),
                         Icon(Icons.paypal, color: Colors.white, size: 30,)
                      ],
                    ),
                    )
                  ) : 
                  (
                    Container(
                      height: 410,
                      width: 370,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: HexColor("212121"),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Paypal",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white
                                ),
                              ),
                              Icon(Icons.paypal, color: Colors.white, size: 30,)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                      labelText: "Email",
                                      labelStyle: TextStyle(color: Colors.white),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white
                                        )
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white
                                        )
                                      ),
                                    ),
                                ),        
                                const SizedBox(height: 10,),                        
                                TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  decoration: const InputDecoration(
                                      labelText: "Password",
                                      labelStyle: TextStyle(color: Colors.white),
                                      hintStyle: TextStyle(color: Colors.grey),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white
                                        )
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.white
                                        )
                                      ),
                                    ),
                                ),
                                const SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Checkbox(
                                      value: controller.checkBox2, 
                                      onChanged: (value){
                                        controller.updateCheckBox2();
                                      },
                                      activeColor: Colors.pink,
                                      shape: const RoundedRectangleBorder(
                                        // borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 260,
                                      child: Text(
                                        "I constent to the 1 month free month trial, and i agree that unless i cancel my plan before the trial ends that i will be deducted 400",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10
                                        ),
                                      ),
                                    )
                                  ]
                                )
                              ],
                            )
                          )
                        ],
                      ),
                    )
                  )
                ),
              ]
              ),
            ), 
          );
        }
      ),
    );
  }
}