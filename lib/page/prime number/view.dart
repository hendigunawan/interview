import 'dart:io';

import 'package:flutter/material.dart';
import 'package:prime_numbers/prime_numbers.dart';

class ViewPrime extends StatelessWidget {
  ViewPrime({super.key});

  final fN = TextEditingController();
  final lN = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: width * 0.4 * 1,
                  margin: EdgeInsets.all(18),
                  child: TextFormField(
                    controller: fN,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('First Number'),
                    ),
                  ),
                ),
                Container(
                  width: width * 0.4 * 1,
                  margin: EdgeInsets.all(18),
                  child: TextFormField(
                    controller: lN,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Last Number'),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                width: width * 0.4,
                height: height / 15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Get Result'),
              ),
              onTap: () {
                final int fNumber = int.parse(fN.text);
                final int lNumber = int.parse(lN.text);

                final pm = PrimeNumbers().between(fNumber, lNumber);

                print(pm);

                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: SizedBox(
                        height: 400,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(pm.toString()),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
