

import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/constants/app_color.dart';

class CustomTextFeild extends StatelessWidget {
  final Icon  PerfIcon;
  final String firstTitle;
  final String secondTitle;

  CustomTextFeild({
    required this.PerfIcon,
    required this.firstTitle,
    required this.secondTitle,
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
    
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(firstTitle),
          SizedBox(width: 30),
          TextField(
            
            decoration: InputDecoration(
              prefixIcon: PerfIcon,
              hintText: secondTitle,
             focusColor: AppColor.primary.withOpacity(0.1),
            enabledBorder: 
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColor.primary.withOpacity(0.3), width: 2),
              ),
            
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColor.primary, width: 2),
            ),
          ),
          ),
          SizedBox(height: 20),
        ],
      );
  }
}