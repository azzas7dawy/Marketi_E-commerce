import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/constants/app_color.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Map<String, String>> onboardingData = [
    {
      "title": "Welcome to Marketi",
      "subtitle": "Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.",
      "image": "assets/Illustration_Onboarding_1.png",
    },
    {
      "title": "Easy to Buy",
      "subtitle": "Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.",
      "image": "assets/Illustration_Onboarding_2.png",
    },
    {
      "title": "Fast Delivery",
      "subtitle": "Start exploring now and experience the convenience of online shopping at its best.",
      "image": "assets/Illustration_Onboarding_3.png",
    },
  ];

  void _nextPage() {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      _goToHome();
    }
  }

  void _skip() {
    _pageController.jumpToPage(onboardingData.length - 1);
  }

  void _goToHome() {
    // Navigate to home or login
    Navigator.pushReplacementNamed(context, "/home");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Skip button (only show if not last page)
            if (_currentPage != onboardingData.length - 1)
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: _skip,
                  child: Text("Skip", style: TextStyle(color:AppColor.primary)),
                ),
              ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: onboardingData.length,
                itemBuilder: (context, index) => OnboardingContent(
                  title: onboardingData[index]['title']!,
                  subtitle: onboardingData[index]['subtitle']!,
                  image: onboardingData[index]['image']!,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Circle swipe indicators
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(

                onboardingData.length,
                (index) => buildDot(index),
              ),
            ),
            SizedBox(height: 30),
            // Next / Get Started button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: AppColor.primary,
                ),
                onPressed: _nextPage,
                child: Text(
                  _currentPage == onboardingData.length - 1
                      ? "Get Started"
                      : "Next",
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 2),
      height: 15,
      width: _currentPage == index ? 30 : 12,
      decoration: BoxDecoration(
        color: _currentPage == index ? const Color.fromARGB(255, 9, 22, 42) : AppColor.primary,
        shape: BoxShape.circle,
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String title, subtitle, image;

  OnboardingContent({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 250),
          SizedBox(height: 20),
          Text(title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
