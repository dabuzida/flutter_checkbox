import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
  bool isChecked8 = false;
  bool isChecked9 = false;
  bool isChecked10 = false;
  bool isChecked11 = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      return Colors.black;
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

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
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 2.0, color: Colors.green),
          ),
          activeColor: Colors.white, // 체크시,  바탕색
          checkColor: Colors.green, //  체크시, 체크아이콘 색
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
              isChecked4 = !isChecked4;
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
                      (states) => const BorderSide(width: 2.0, color: Colors.green),
                    ),
                    activeColor: Colors.white, // 체크시,  바탕색
                    checkColor: Colors.green, //  체크시, 체크아이콘 색
                    value: isChecked4,
                    onChanged: (bool? value) {
                      isChecked4 = value!;
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
          value: isChecked6,
          onChanged: (bool? value) {
            setState(() {
              isChecked6 = value!;
            });
          },
        ),
      ],
    );
  }
}
