import 'package:flutter/material.dart';
import 'package:test2/models/listofnames.dart';

class Names extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xffFFE086),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff222222),
        title: const Text(
          'اسماء الله الحسنى',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffFFE086),
            fontFamily: 'Rakkas',
          ),
        ),
      ),
      body: Container(
        color: const Color(0xff222222),
        child: GridView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: nameList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
         
          itemBuilder: (context, index) {
            listOfNames names = nameList[index];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: const Color(0xff222222),
                color: const Color(0xff333337),
              ),
              child: Text(
                names.text,
                style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'Rakkas',
                  color: Color(0xffFFE086),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
