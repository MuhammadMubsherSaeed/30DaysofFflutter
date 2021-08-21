import 'package:first_app/utilis/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
              horizontal: 35.0,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: changebutton ? 50 : 150,
                    alignment: Alignment.center,
                    child: changebutton
                        ? Icon(Icons.done, color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      //shape: changebutton? BoxShape.circle:BoxShape.rectangle
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 8),
                    ),
                  ),
                ),

                //  ElevatedButton(
                //    child: Text("Login"),
                //    style: TextButton.styleFrom(fixedSize: Size(150, 40)),
                //    onPressed: () {
                //      Navigator.pushNamed(context, MyRoutes.homeRoute);
                //    },
                //  ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
