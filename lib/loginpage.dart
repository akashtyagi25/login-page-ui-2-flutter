import 'package:flutter/material.dart';
import 'package:project2/my_button.dart';
import 'package:project2/my_textfiled.dart';
import 'package:project2/square_tile.dart';
class loginpage extends StatelessWidget{
  final username=TextEditingController();
  final password=TextEditingController();

  void signinUserin(){}
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    
    backgroundColor: Colors.grey[300],

    body: SafeArea(
      child: Center(
        child: Column(
          children: [
              SizedBox(height:  50,),
              
              
              Icon(
              Icons.lock,
              size: 100,
              ),
              SizedBox(height: 50,),
              Text('Welcome back, you\'ve been missed!',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
              ),

              SizedBox(height: 25,),

              mytextfield(
                controller: username,
                hintText: 'Username',
              obscuretext: false,
              ),

              SizedBox(height: 15,),

              mytextfield(
                controller: password,
                hintText: 'Password',
                obscuretext: true,
              ),

              SizedBox(height: 10,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal:20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot Password?',style: TextStyle(color: Colors.grey.shade600),),
                  ],
                ),
              ),
              SizedBox(height: 25,),

              mybutton(
                onTap: signinUserin,
              ),

              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                color: Colors.grey.shade400,
                ),),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('or continue with',
                  style: TextStyle(color: Colors.grey.shade700),),
                ),
                
                
                Expanded(
                      child: Divider(
                        thickness: 0.5,
                color: Colors.grey.shade400,
                ),)
                  ],
                ),
              ),
              SizedBox(height: 50,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                squaretile(imagepath: 'lib/images/google.png'),

                SizedBox(width: 25,),

                squaretile(imagepath: 'lib/images/facebook.png'),

               

                ],
                
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text('not a member?'
               ,style: TextStyle(color: Colors.grey.shade700),),
               SizedBox(width: 5,),
               Text('Register Here',
               style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                ],
              )
              
          ],
        ),
      ),
    ),
  );
  }

}