import 'package:flutter/material.dart';

import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/Informationcusto/information_custo.dart';
import 'package:microfinance/view/screen/contact/contact_screen.dart';
import 'package:microfinance/view/screen/profile/profile_screen.dart';
import 'package:microfinance/view/screen/registercusto/register_custo.dart';
import 'package:microfinance/view/widget/Functiondashboard.dart';
import 'package:microfinance/view/widget/WidgwtLogo.dart';

class Marketing extends StatefulWidget {
  const Marketing({super.key});

  @override
  State<Marketing> createState() => _MarketingState();
}

class _MarketingState extends State<Marketing> {
  String name = 'marketing';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.Background2), fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              const LogoWidget(),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          Images.user_background,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
               
              FuncTionDashBoard(
                  icon: Image.asset(Images.register_custo),
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterCusto()));
                  }),
              FuncTionDashBoard(
                  icon: Image.asset(Images.custo_info),
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InfoCustoScreen()));
                  }),
               
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 100,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Image.asset(Images.profile),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProFileScreen(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: Image.asset(Images.contact_icon),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConTactScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
