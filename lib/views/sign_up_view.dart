import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/constants/app_color.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       actions: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: AppColor.primary),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      
  
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('splash.png', width: 100, height: 100),
            SizedBox(height: 20),
      CustomTextFeild(PerfIcon: Icon(Icons.person), firstTitle: 'Your Name', secondTitle: 'Enter your name'),
      CustomTextFeild(PerfIcon: Icon(Icons.email), firstTitle: 'Your Email', secondTitle: 'Enter your email'),
      CustomTextFeild(PerfIcon: Icon(Icons.lock), firstTitle: 'Password', secondTitle: 'Enter your password'),
      CustomTextFeild(PerfIcon: Icon(Icons.lock), firstTitle: 'Confirm Password', secondTitle: 'Re-enter your password'),
          SizedBox(height: 20),
          Center(
            child: Text('Or Sign Up with', style: TextStyle(color: AppColor.primary)),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.facebook, color: AppColor.primary)),
              IconButton(onPressed: (){}, icon: Icon(Icons.phone_android, color: AppColor.primary)),
              IconButton(onPressed: (){}, icon: Icon(Icons.apple, color: AppColor.primary)),
            ],
          ),
          SizedBox(height: 20),

      ElevatedButton(onPressed: (){}, child: Text('Sign Up')),
          ],
        ),
      ),

      )
    ;
  }
}

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