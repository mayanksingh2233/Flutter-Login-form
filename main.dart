import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  bool _isObscure = true;
  var myvar;
  var myvarpass;
  var displaytext;
  
  void showtext(){
    setState(() {
      displaytext = myvar +" "+ myvarpass;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"sample app",
     
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login Form"),
        ),
         body:Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (text){
                myvar = text;
              },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box_rounded),
                    labelText:"Username",
                    helperText: "Enter username ",
                    hintText: "username" ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                    ),
                  maxLength: 8,
                  autofocus: true,
                  autocorrect: true,
                  style: TextStyle(
                     fontSize: 18.0
                  ),
                )
                ),
                  Padding(padding: EdgeInsets.all(20.0),
            child: TextField(
              onChanged: (text){
                myvarpass = text;
              },
              obscureText: _isObscure,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_rounded),
                    suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
                    labelText:"Password",
                    helperText: "Enter password ",
                    hintText: "password" ,  
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                    ),
                  maxLength: 16,
                  autofocus: true,
                  style: TextStyle(
                     fontSize: 18.0
                  ),
                )
                ),
                MaterialButton(onPressed: showtext,
                child: Padding(padding: EdgeInsets.only(top:15.0,bottom: 15.0,left:25.0,right: 25.0),
                child:Text("Login",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                ),
                ),
                ),
                 color: Colors.blue[400],
                shape: StadiumBorder(),
                ),Row(crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 10.0,left: 10.0,bottom: 10.0),
                  child:Text("Already have account?")),
                  Padding(padding: EdgeInsets.only(right: 10.0),
                  child: TextButton(onPressed: (){}, child: Text("Sign-up")))
                ],),
                Text("You Entered $displaytext")
                
          ],
        ),
      ),    
    );
  }
}