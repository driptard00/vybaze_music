import 'package:flutter/material.dart';

class UserTypePage extends StatefulWidget {
  const UserTypePage({ Key? key }) : super(key: key);

  @override
  State<UserTypePage> createState() => _UserTypePageState();
}

class _UserTypePageState extends State<UserTypePage> {

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Pick User Type", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              
            },
            icon: const Icon(Icons.arrow_forward_ios, color: Colors.pink, size: 25,)
            )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            const SizedBox(height: 30,),
            const Text("What type of a user are you ?", style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Radio(
                      activeColor: Colors.pink,
                      value: 1,
                      groupValue: _value, 
                      onChanged: (value){
                        setState(() {
                          _value = 1;
                        });
                      }
                      ),
                       const Text("A Creator", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      activeColor: Colors.pink,
                      value: 2,
                      groupValue: _value, 
                      onChanged: (value){
                        setState(() {
                          _value = 2;
                        });
                      }
                      ),
                      const Text("A Listener", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}