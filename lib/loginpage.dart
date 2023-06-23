import 'package:flutter/material.dart';
import 'package:profilepage/home.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
//import 'package:profilepage/secend.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key, this.email, this.password}) : super(key: key);

  String? email;
  String? password;
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2f232f),
        body: Container(
          width: double.infinity,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              Text("Gmail: ${widget.email}",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              Text("Password: ${widget.password}",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontSize: 20)),
              SizedBox(
                height: 70,
              ),
              MaterialButton(
                color: Colors.teal,
                minWidth: double.minPositive,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(120)),

                textColor: Color(0xffffffff),

                height: 50,
                //minWidth: 20,

                onPressed: () {
                  Navigator.of(context).pop(
                      MaterialPageRoute(builder: (context) => loginpage()));

                  Navigator.of(context)
                      .pop(MaterialPageRoute(builder: (context) => home()));
                },
                child: Text("Go Back Log in Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();

  bool isObsecure = false;

  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("User Login Interface",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              )),
          backgroundColor: Color.fromARGB(255, 133, 42, 9),
        ),
        backgroundColor: Color(0xff2f232f),
        //resizeToAvoidBottomInset: false,
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                height: 500,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email can't be empty";
                          }
                          if (value.length < 3) {
                            return "Invalid Email";
                          }
                          if (!value.contains("@gmail.com")) {
                            return "Invalid User email";
                          }
                        },
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          fillColor: Colors.white.withOpacity(0.9),
                          filled: true,
                          hintText: "Enter your Email",
                          //labelText: "Enter your Email",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                          prefixIcon: Icon(Icons.email),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.amber)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onEditingComplete: () {
                          if (_formKey.currentState!.validate()) {
                            print(" Successfull");
                          } else {}
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          }
                          if (value.length < 3) {
                            return "Invalid Password";
                          }
                          if (value.length > 10) {
                            return "Invalid Password";
                          }
                        },
                        controller: passwordController,
                        obscureText: isObsecure,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObsecure = !isObsecure;
                              });
                            },
                            icon: Icon(Icons.visibility),
                          ),
                          fillColor: Colors.white.withOpacity(0.9),
                          filled: true,
                          hintText: "Enter your Password",
                          //labelText: "Enter your Password",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                          prefixIcon: Icon(Icons.lock),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.amber)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        onEditingComplete: () {
                          if (_formKey.currentState!.validate()) {
                            print(" Successfull");
                          } else {}
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          }
                          if (value.length < 3) {
                            return "Invalid Password";
                          }
                          if (value.length > 10) {
                            return "Invalid Password";
                          }
                          if (value != passwordController.text.toString()) {
                            return "Password doesnt match";
                          }
                        },
                        controller: passwordController2,
                        obscureText: isObsecure,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObsecure = !isObsecure;
                              });
                            },
                            icon: Icon(Icons.visibility),
                          ),
                          fillColor: Colors.white.withOpacity(0.9),
                          filled: true,
                          hintText: "Enter your Re-password",
                          //labelText: "Enter your Password",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54),
                          prefixIcon: Icon(Icons.lock),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.amber)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forget Password",
                            style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.w700),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        color: Color(0xff00665C),
                        minWidth: double.infinity,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SecondPage(
                                      email: emailController.text.toString(),
                                      password:
                                          passwordController.text.toString(),
                                    )));
                          } else {}
                        },
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        height: 50,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                              fontSize: 14, color: Colors.lightBlueAccent),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
