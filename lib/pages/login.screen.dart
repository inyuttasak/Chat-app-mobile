// ignore_for_file: prefer_const_constructors, unnecessary_new




import 'package:chatapp/models/message_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class loginForm extends StatefulWidget {

  @override
  _loginFormState createState() => _loginFormState();
}
 
  Widget buildUsername(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Username',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6,
                offset: Offset(0,2)
              )
            ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.account_box,
                color: Color(0xFFB71C1C),
              ),
              hintText: 'Username',
              hintStyle: TextStyle(
                color: Colors.black38
              )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6,
                offset: Offset(0,2)
              )
            ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black87
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xFFB71C1C),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black38
              )
            ),
          ),
        )
      ],
    );
  }

  Widget buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
      onPressed: (){
        Navigator.pushNamed(context,'/chat');
      },
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        
        child: Text(
          'Login',
          style: TextStyle(
            color: Color(0xFFB71C1C),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget showLogo(){
    return Container(
      width: 200,
      height: 200,
      child: Image.asset('assets/images/rv1.png'),
    );
  }
class _loginFormState extends State<loginForm> {
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: AnnotatedRegion<SystemUiOverlayStyle>(
       value: SystemUiOverlayStyle.light,
       child: GestureDetector(
         child: Stack(
           children: <Widget>[
             Container(
               height: double.infinity,
               width: double.infinity,
               decoration: BoxDecoration(
                 gradient: LinearGradient(
                   begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                   colors: [
                     Color(0xFFE53935),
                     Color(0xFFEF9A9A),
                     Color(0xFFFFCDD2),
                   ]
                 )
               ),
               child: SingleChildScrollView(
                 padding: EdgeInsets.symmetric(
                   horizontal: 25,
                   vertical: 120
                 ),
                 child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Text(
                     'Sign In to Chat App',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 30,
                       fontWeight: FontWeight.bold
                     ),
                   ),
                   SizedBox(height: 50),
                   buildUsername(),
                   SizedBox(height: 20),
                   buildPassword(),
                   SizedBox(height: 20),
                   buildLoginBtn(),
                   showLogo(),
                 ]),
                 
               ),
             )
           ]),
         ),
       ),
     );
   }
}
