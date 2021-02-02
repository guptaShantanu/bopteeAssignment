import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gobuzy_assignment/Screens/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(vertical: 40.0,horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 150.0,
                width: 170.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('Assets/logo.png'),
                        fit: BoxFit.contain)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back,',
                      style:
                          TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sign in to continue',
                      style: TextStyle(fontSize: 12.0, color: Color(0xff707070)),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Enter registered number',
                      style: TextStyle(fontSize: 12.0, color: Color(0xff707070)),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50.0,
                      decoration: BoxDecoration(color: Color(0xffEFEFEF)),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Icon(
                                Icons.phone,
                                color: Colors.black,
                              ),
                            ),
                            flex: 1,
                          ),
                          Container(
                            width: 1.0,
                            height: 40.0,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 10.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: '7991373447'),
                              ),
                            ),
                            flex: 7,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      child: Text(
                          'A 4 Digit OTP will sent to your Phone to Verify your Mobile Number',
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 14.0
                      ),),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoardScreen()));
                        },
                        child: Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width * 0.7,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xff040F4F),
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Text(
                            'Get OTP',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50.0,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'New here?',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14.0),
                            ),
                            Text(
                              ' Create an account',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14.0),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'BopTee All right reserved',
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
