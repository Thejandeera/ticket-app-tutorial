import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(Icons.flight_takeoff_rounded, color: AppStyles.planeColor,),
          SizedBox(width: 10,),
          Text("Airline Tickets", style: AppStyles.textStyle,),
          SizedBox(width: 10,),
          Text("Departure", style: AppStyles.textStyle,),
        ],
      ),
    );
  }
}
