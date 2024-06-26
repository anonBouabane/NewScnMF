import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:microfinance/controller/authcontroller.dart';
import 'package:microfinance/data/model/auth_model.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  Authmodel model = Authmodel();
  TextEditingController usercontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

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
                    const SizedBox(
                      height: 50,
                    ),
                    const LogoWidget(),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 120,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(Images.icon_profile))),
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Images.inputBG),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: TextFormField(
                                controller: usercontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'enter your user name';
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: const InputDecoration(
                                    hintText: "ຊື່ຜູ້ໃຊ້",
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 16.0)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Images.inputBG),
                                    fit: BoxFit.fill),
                              ),
                              child: TextFormField(
                                controller: passwordcontroller,
                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "enter your password";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: const InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  hintText: "ລະຫັດຜ່ານ",
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Consumer<AuthController>(
                      builder: (context, value, child) {
                        if (value.msg.isNotEmpty &&
                            value.msg.toString() != "") {
                          return Text(
                            value.msg.toString(),
                            style: const TextStyle(color: Colors.red),
                          );
                        } else {
                          return Container();
                        }
                      },
                    ),
                    InkWell(
                      onTap: () async {
                        if (formkey.currentState!.validate()) {
                          String user = usercontroller.text;
                          String password = passwordcontroller.text;
                          final authcontroller = Provider.of<AuthController>(
                              context,
                              listen: false);
                          final resp =
                              await authcontroller.login(user, password);

                          switch (resp) {
                            case '5':
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/marketing', (route) => false);

                              break;
                            case '4':
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/loan', (route) => false);
                              break;
                            default:
                          }
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
