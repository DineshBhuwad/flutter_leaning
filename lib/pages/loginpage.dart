import 'package:app1/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton=false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, Myroutes.homeROute);
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:16.0,horizontal:20.0),
        child: SingleChildScrollView(
          child: Form(
            key:_formKey,
            child: Column(
              children: [
                Image.asset("assets/iamges/undraw_Upload_image_re_svxx.png",
                fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 22,
                ),
                Text("Welcome $name",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight:FontWeight.bold,
                ),),
                const SizedBox(
                  height: 22,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                  validator: (value){
                    if(value==null){
                      return "username cannot be empty";
                    }
                     return null;
                  },
                  onChanged: (value){
                    name=value;
                    setState(() {});
                  }
                ),

                const SizedBox(
                  height: 22,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Passward",
                  ),
                  validator: (value){
                    if(value==null){
                      return "password cannot be empty";
                    }
                    return null;
                  },
                ),

                const SizedBox(
                  height: 22,
                ),

                InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                          ),
                        ),
                ),

                // ElevatedButton(
                //   onPressed:(){
                //     Navigator.pushNamed(context, Myroutes.homeROute);
                //   },
                //   style: TextButton.styleFrom(), 
                //   child: Text("Login")
                // )

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}