import 'package:carousel_slider/carousel_slider.dart';
import 'package:creditsea_flutter_assignment/config/assets.dart';
import 'package:creditsea_flutter_assignment/config/color.dart';
import 'package:creditsea_flutter_assignment/widget/custom_input_container.dart';
import 'package:creditsea_flutter_assignment/widget/custom_phone_input.dart';
import 'package:creditsea_flutter_assignment/widget/custom_tile.dart';
import 'package:creditsea_flutter_assignment/widget/custom_top_container.dart';
import 'package:creditsea_flutter_assignment/widget/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

final List<Widget> _pages = [
  CustomTopContainer(
    title: "Flexible Loan Options",
    description: "Loan types to cater to different financial needs",
    mainContent: Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: 200,
      height: 260,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        children: [
          CustomTile(
            image: Assets.car,
            size: 80,
          ),
          CustomTile(
            image: Assets.bike,
            size: 80,
          ),
          CustomTile(
            image: Assets.laptop,
            size: 80,
          ),
          CustomTile(
            image: Assets.phone,
            size: 80,
          ),
        ],
      ),
    ),
  ),
  CustomTopContainer(
    title: "Instant Loan Approval",
    description: "Users will receive approval within minutes",
    mainContent: Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 200,
      child: CustomTile(image: Assets.bill, size: 200),
    ),
  ),
  CustomTopContainer(
    title: "24x7 Customer Care",
    description: "Dedicated customer support team",
    mainContent: Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: 200,
      child: CustomTile(image: Assets.bill, size: 200),
    ),
  ),
];

class _SignInPageState extends State<SignInPage> {
  bool agree = false;
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorX.backgroundBlue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                        // enlargeCenterPage: true,
                        viewportFraction: 1.0,
                        aspectRatio: 16 / 9,
                        height: MediaQuery.of(context).size.height * 0.47,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() => _currentIndex = index);
                        },
                      ),
                      items: _pages,
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: _currentIndex,
                      count: _pages.length,
                      effect: WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: Colors.blueAccent,
                        dotColor: Colors.grey,
                      ),
                      onDotClicked: (index) => _controller.animateToPage(index),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                decoration: BoxDecoration(
                    color: ColorX.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Text(
                      'Welcome to Credit Sea!',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) {
                        return SizedBox(
                          width: 30,
                          height: 300,
                          child: TextFormField(
                            // controller: _otpControllers[index],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            // style: theme.textTheme.headlineSmall,
                            decoration: InputDecoration(
                              counterText: '',
                              filled: true,
                              fillColor: const Color(0xFFF3F8FF),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide:
                                    const BorderSide(color: Color(0xFFD9D9D9)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide:
                                    const BorderSide(color: Color(0xFF1573FE)),
                              ),
                            ),
                            onChanged: (value) {
                              if (value.length == 1 && index < 5) {
                                FocusScope.of(context).nextFocus();
                              } else if (value.isEmpty && index > 0) {
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                        );
                      }),
                    ),
                    // CustomInputContainer(
                    //   inputTitle: "Mobile Number",
                    //   inputWidget: CustomPhoneWidget(
                    //     onchanged: (phone) {
                    //       print(phone.completeNumber);
                    //     },
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 20.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Checkbox(
                    //         activeColor: ColorX.green,
                    //         value: agree,
                    //         onChanged: (value) {
                    //           setState(() {
                    //             agree = value ?? false;
                    //           });
                    //         },
                    //       ),
                    //       SizedBox(
                    //         width: MediaQuery.of(context).size.width * 0.8,
                    //         child: Text(
                    //           "By continuing, you agree to our privacy policies and Terms & Conditions.",
                    //           style: TextStyle(fontSize: 15),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // CutomButton(
                    //   buttonText: "Request OTP",
                    //   disabled: agree,
                    //   onTap: () {
                    //     print("hi");
                    //   },
                    // ),
                    // GestureDetector(
                    //   onTap: () {},
                    //   child: Center(
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(15.0),
                    //       child: Text(
                    //         "Existing User? Sign in",
                    //         style: TextStyle(
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w600,
                    //             color: ColorX.backgroundBlue),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
