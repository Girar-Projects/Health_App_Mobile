import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: Center(
              child: Image.asset('images/Health-App-Logo.jpeg'),
            )
          ),
          Center(
            child: Card(
              margin: EdgeInsets.fromLTRB(30,0,30,0),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color.fromRGBO(200, 200, 200, 1),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Welcome !",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 19,

                        ),
                      ),
                      SizedBox(
                        height: 20
                      ),
                      Text(
                        "Sign in to",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "Health App",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                          height: 30
                      ),
                      InputBox(inputLabel: "Phone number", placeHolder: "+2519********"),
                      SizedBox(
                          height: 20
                      ),
                      InputBox(inputLabel: "Password", placeHolder: "************", isPassword: true),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: true,
                            onChanged:(bool? value) {

                            }
                          ),
                          Text(
                            "Remember me",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          )
                        ]
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          // Respond to button press
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color.fromARGB(1, 36, 107, 253), Color.fromARGB(1, 80, 137, 255)],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0,10,0,10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            //width: double.infinity,
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              foreground: Paint()..shader = LinearGradient(
                                colors: <Color>[
                                  Color.fromRGBO(41, 230, 1, 1),
                                  Color.fromRGBO(13, 157, 1, 1),
                                ],
                              ).createShader(Rect.fromLTWH(0.0, 0.0, 400.0, 10.0))
                            ),
                          )
                        ]
                      ),
                      SizedBox(
                        height:5,
                      ),
                      Center(
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: Color.fromRGBO(80,137,255,1),
                            ),
                          )
                      ),
                    ]
                  )
              ),
            ),
          ),
        ]
      )
    );
  }
}

class InputBox extends StatefulWidget {
  final inputLabel;
  final placeHolder;
  final isPassword;
  const InputBox({Key? key, this.inputLabel, this.placeHolder, this.isPassword=false}) : super(key: key);

  @override
  _InputBoxState createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            obscureText: widget.isPassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: widget.placeHolder,
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
              labelText: widget.inputLabel,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          )
        ]
      )
    );
  }
}

class Button extends StatelessWidget {
  final buttonText;
  const Button({Key? key, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        minimumSize: const Size.fromHeight(50), // NEW
      ),
      onPressed: () {
        // Respond to button press
      },
      child: Text(buttonText),
    );
  }
}