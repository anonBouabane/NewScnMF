import 'package:flutter/material.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/widget/WidgwtLogo.dart';
import 'package:microfinance/view/widget/bottomappbar.dart';

class InfoCustoScreen extends StatefulWidget {
  const InfoCustoScreen({super.key});

  @override
  State<InfoCustoScreen> createState() => _InfoCustoScreenState();
}

class _InfoCustoScreenState extends State<InfoCustoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Images.Background), fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              LogoWidget(),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Column(
                  children: [
                    Text('data'),
                    SizedBox(
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        height: double.infinity,
        width: double.infinity,
      ),
      bottomNavigationBar: WidgetBottomNav(),
    );
  }
}
