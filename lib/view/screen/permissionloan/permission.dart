import 'package:flutter/material.dart';
import 'package:microfinance/util/Textstyle.dart';
import 'package:microfinance/util/images.dart';
import 'package:microfinance/view/screen/dashboard/widget/WidgwtLogo.dart';

class PerMissionLoan extends StatefulWidget {
  const PerMissionLoan({super.key});

  @override
  State<PerMissionLoan> createState() => _PerMissionLoanState();
}

class _PerMissionLoanState extends State<PerMissionLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Images.Background), fit: BoxFit.fill)),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
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
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "ອອກສັນຍາປ່ອຍກູ້",
                          style: textheaderTitle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                height: 20,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "ອອກສັນຍາ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                  ),
                                )),
                            SizedBox(
                                height: 20,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "ລາຍການຂໍ້ມູນສັນຍາ",
                                    style:const TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 48, 179, 240),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "ຢືນຢັນການອອກສັນຍາ",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(187, 2, 109, 197)),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
