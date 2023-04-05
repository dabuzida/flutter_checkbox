import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key});

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isChecked5 = false;
  bool? isChecked8 = false;
  bool isChecked9 = false;
  bool isChecked10 = false;
  bool isChecked11 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Checkbox(
          activeColor: Colors.purple,
          checkColor: Colors.white,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(1.0)),
          // ),
          // fillColor: MaterialStateProperty.resolveWith(getColor),
          // overlayColor: ,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Checkbox(
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 2.0, color: Colors.black),
          ),
          activeColor: Colors.white, // 체크시,  바탕색
          checkColor: Colors.red, //  체크시, 체크아이콘 색
          splashRadius: 0.0, // 버튼에 호버시, 체크박스를 감싸는 물방울 그림자
          value: isChecked2,
          onChanged: (bool? value) {
            setState(() {
              isChecked2 = value!;
            });
          },
        ),
        Checkbox(
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 2.0, color: Colors.blue),
          ),
          activeColor: Colors.white, // 체크시,  바탕색
          checkColor: Colors.blue, //  체크시, 체크아이콘 색
          value: isChecked5,
          onChanged: (bool? value) {
            setState(() {
              isChecked5 = value!;
            });
          },
        ),
        Checkbox(
          activeColor: Colors.white, // 체크시,  바탕색
          checkColor: Colors.green, //  체크시, 체크아이콘 색
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 1.0, color: Colors.green),
          ),
          splashRadius: 0.0,
          value: isChecked3,
          onChanged: (bool? value) {
            setState(() {
              isChecked3 = value!;
            });
          },
        ),
        Checkbox(
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 2.0, color: Colors.grey),
          ),
          activeColor: Colors.white, // 체크시,  바탕색
          checkColor: Colors.grey, //  체크시, 체크아이콘 색
          value: isChecked4,
          onChanged: (bool? value) {
            setState(() {
              isChecked4 = value!;
            });
          },
        ),
        Container(
          width: 110,
          color: Colors.blue.shade100,
          child: GestureDetector(
            onTap: () {
              isChecked6 = !isChecked6;
              setState(() {});
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Row(
                children: <Widget>[
                  Checkbox(
                    // shape: RoundedRectangleBorder(),
                    shape: const CircleBorder(),
                    hoverColor: null,
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => const BorderSide(width: 2.0, color: Colors.teal),
                    ),
                    splashRadius: 0.0,
                    activeColor: Colors.white, // 체크시,  바탕색
                    checkColor: Colors.teal, //  체크시, 체크아이콘 색
                    value: isChecked6,
                    onChanged: (bool? value) {
                      // isChecked4 = value!;
                      isChecked6 = !isChecked6;
                      setState(() {});
                    },
                  ),
                  SizedBox(width: 20),
                  Text('aaksdkl'),
                ],
              ),
            ),
          ),
        ),
        //
        Checkbox(
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 2.0, color: Colors.grey),
          ),
          splashRadius: 0.0,
          activeColor: Colors.white, // 체크시,  바탕색
          checkColor: Colors.grey, //  체크시, 체크아이콘 색
          value: isChecked7,
          onChanged: (bool? value) {
            setState(() {
              isChecked7 = value!;
            });
          },
        ),
        Checkbox(
          side: MaterialStateBorderSide.resolveWith(
            (Set<MaterialState> states) {
              if (isChecked7) {
                return const BorderSide(color: Colors.transparent);
              }

              return const BorderSide(color: Color(0xFFC9C9C9));
            },
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
          splashRadius: 0.0,
          activeColor: const Color(0xFF00CBC8), // 체크시,  바탕색
          hoverColor: Colors.transparent,
          value: !isChecked7,
          onChanged: (bool? value) {
            // setState(() {
            //   isChecked7 = value!;
            // });
          },
        ),
        Checkbox(
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 2.0, color: Colors.pink),
          ),
          splashRadius: 0.0,
          activeColor: Colors.white,
          checkColor: Colors.pink,
          tristate: true,
          value: isChecked8,
          onChanged: (bool? value) {
            isChecked8 = value;
            setState(() {});
          },
        ),
      ],
    );
  }
}
///