import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/constants/app_color.dart';
import 'package:marketi_ecommerce/core/Widgets/custom_text_field.dart';

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
            Image.asset('assets/splash.png', width: 100, height: 100),
            SizedBox(height: 20),

      CustomTextFeild(PerfIcon: Icon(Icons.email), firstTitle: 'Your Email', secondTitle: 'Enter your email'),
      CustomTextFeild(PerfIcon: Icon(Icons.lock), firstTitle: 'Password', secondTitle: 'Enter your password'),
      
          SizedBox(height: 20),
          Center(
            child: Text('Or Login with', style: TextStyle(color: AppColor.primary)),
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

      ElevatedButton(onPressed: (){}, child: Text('login')),
          ],
        ),
      ),

      )
    ;
  }
}