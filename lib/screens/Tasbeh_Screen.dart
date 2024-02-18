import 'package:flutter/material.dart';

class Tasbeh extends StatefulWidget {
  const Tasbeh({super.key});

  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  int counter = 0;
  List<String> statments = [
    'صلى على النبى',
    'سبحان الله',
    'الحمدلله',
    'الله اكبر',
    'أَستغفرُ الله',
  ];
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
          'السبحه الالكترونيه',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffFFE086),
            fontFamily: 'Rakkas',
          ),
        ),
      ),
      body: Container(
        color: const Color(0xff222222),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff333337),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'images/silent-mode.png',
                        color: const Color(0xffFFC281),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff333337),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        color: const Color(0xffFFC281),
                        'images/speaker-silent-outline-with-a-cross.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  width: 225,
                  height: 225,
                  decoration: BoxDecoration(
                    color: const Color(0xff333337),
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: Text(
                    '$counter',
                    style: const TextStyle(
                      color: Color(0xffFFE086),
                      fontSize: 50,
                      fontFamily: 'Rakkas',
                    ),
                  ),
                ),
              ),
            ),
            DropdownMenu(
              hintText: 'صلى على النبى',
              width: 310,
              initialSelection: statments[0],
              textStyle: const TextStyle(
                color: Color(0xffFFE086),
                fontSize: 24,
                fontFamily: 'Rakkas',
                fontWeight: FontWeight.bold,
              ),
              menuStyle: const MenuStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xff333337),
                ),
              ),
              dropdownMenuEntries: statments.map((item) {
                return DropdownMenuEntry<String>(
                  label: item,
                  value: item,
                  style: MenuItemButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rakkas',
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFE086),
                    ),
                    foregroundColor: const Color(0xffFFE086),
                  ),
                );
              }).toList(),
            ),

            // Container(
            //   alignment: Alignment.center,
            //   width: 295,
            //   height: 50,
            //   margin: const EdgeInsets.symmetric(vertical: 20),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: const Color(0xff333337),
            //   ),
            //   child: const Text(
            //     'صلى على النبى',
            //     style: TextStyle(
            //       fontSize: 24,
            //       fontFamily: 'Rakkas',
            //       color: Color(0xffFFE086),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 138,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFD763),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          counter = 0;
                        });
                      },
                      child: const Text(
                        'تصفير',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Rakkas',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 138,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff333337),
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: const Text(
                        'تسبيحه',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Rakkas',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
