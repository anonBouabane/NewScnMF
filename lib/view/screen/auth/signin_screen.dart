import 'package:flutter/material.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Images.Background), fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 const   SizedBox(
                      height: 50,
                    ),
                  const  LogoWidget(),
                 const   SizedBox(
                      height: 10,
                    ),
                 const   SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(Images.inputBG),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    child: TextFormField(
                                      controller: usercontroller,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'enter your user name';
                                        } else {
                                          return null;
                                        }
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'ຊື່ຜູ້ໃຊ້:',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                          left: 8,
                                        ),
                                      ),
                                      maxLength: 30,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(Images.inputBG),
                                          fit: BoxFit.fill),
                                    ),
                                    child: TextFormField(
                                      controller: passwordcontroller,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "enter your password";
                                        } else {
                                          return null;
                                        }
                                      },
                                      decoration: InputDecoration(
                                        focusedBorder: InputBorder.none,
                                        hintText: 'ລະຫັດຜ່ານ:',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                          left: 8,
                                        ),
                                      ),
                                      maxLength: 13,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                 const   SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        String user = usercontroller.text;
                        String password = passwordcontroller.text;
                        if (formkey.currentState!.validate()) {
                          print('${user}');
                          print('${password}');
                        } else {
                          return;
                        }
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(Images.Login_btn))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
