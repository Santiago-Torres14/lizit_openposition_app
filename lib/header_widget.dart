import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
        color: Color(0xFF363f93),
      ),
      child: Stack(
        children: [
          Positioned(top: 80,
              left: 0,
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )
                ),
              )
          ),
          Positioned(
            top:110,
            left:20,
            child: Text(
              "Your movies",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF363f93)),
            ),
          )
        ],
      ),
    );
  }
}
