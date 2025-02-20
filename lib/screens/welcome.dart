// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:creditsea_flutter_assignment/config/assets.dart';
// import 'package:creditsea_flutter_assignment/config/color.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_input_container.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_input_field.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_phone_input.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_tile.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_top_container.dart';
// import 'package:creditsea_flutter_assignment/widget/custombutton.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class SignInPage extends StatefulWidget {
//   const SignInPage({super.key});

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// final List<Widget> _pages = [
//   CustomTopContainer(
//     title: "Flexible Loan Options",
//     description: "Loan types to cater to different financial needs",
//     mainContent: Container(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       width: 200,
//       height: 260,
//       child: GridView.count(
//         crossAxisCount: 2,
//         crossAxisSpacing: 20.0,
//         mainAxisSpacing: 20.0,
//         children: [
//           CustomTile(
//             image: Assets.car,
//             size: 80,
//           ),
//           CustomTile(
//             image: Assets.bike,
//             size: 80,
//           ),
//           CustomTile(
//             image: Assets.laptop,
//             size: 80,
//           ),
//           CustomTile(
//             image: Assets.phone,
//             size: 80,
//           ),
//         ],
//       ),
//     ),
//   ),
//   CustomTopContainer(
//     title: "Instant Loan Approval",
//     description: "Users will receive approval within minutes",
//     mainContent: Container(
//       margin: EdgeInsets.symmetric(vertical: 20),
//       width: 200,
//       child: CustomTile(image: Assets.bill, size: 200),
//     ),
//   ),
//   CustomTopContainer(
//     title: "24x7 Customer Care",
//     description: "Dedicated customer support team",
//     mainContent: Container(
//       margin: EdgeInsets.symmetric(vertical: 20),
//       width: 200,
//       child: CustomTile(image: Assets.bill, size: 200),
//     ),
//   ),
// ];

// class _SignInPageState extends State<SignInPage> {
//   bool agree = false;
//   final CarouselSliderController _controller = CarouselSliderController();
//   int _currentIndex = 0;

//   final List<TextEditingController> _otpControllers =
//       List.generate(4, (_) => TextEditingController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: ColorX.backgroundBlue,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.50,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CarouselSlider(
//                       carouselController: _controller,
//                       options: CarouselOptions(
//                         viewportFraction: 1.0,
//                         aspectRatio: 16 / 9,
//                         height: MediaQuery.of(context).size.height * 0.47,
//                         autoPlay: true,
//                         onPageChanged: (index, reason) {
//                           setState(() => _currentIndex = index);
//                         },
//                       ),
//                       items: _pages,
//                     ),
//                     AnimatedSmoothIndicator(
//                       activeIndex: _currentIndex,
//                       count: _pages.length,
//                       effect: WormEffect(
//                         dotHeight: 10,
//                         dotWidth: 10,
//                         activeDotColor: Colors.blueAccent,
//                         dotColor: Colors.grey,
//                       ),
//                       onDotClicked: (index) => _controller.animateToPage(index),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.45,
//                 width: MediaQuery.of(context).size.width,
//                 padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
//                 decoration: BoxDecoration(
//                     color: ColorX.white,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20))),
//                 child: Column(
//                   children: [
//                     // Mobile phone screen starts from here
//                     // Text(
//                     //   'Welcome to Credit Sea!',
//                     //   style:
//                     //       TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//                     // ),
//                     // SizedBox(
//                     //   height: 10,
//                     // ),
//                     // CustomInputContainer(
//                     //   inputTitle: "Mobile Number",
//                     //   inputWidget: CustomPhoneWidget(
//                     //     onchanged: (phone) {
//                     //       print(phone.completeNumber);
//                     //     },
//                     //   ),
//                     // ),
//                     // Padding(
//                     //   padding: const EdgeInsets.symmetric(vertical: 20.0),
//                     //   child: Row(
//                     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     //     children: [
//                     //       Checkbox(
//                     //         activeColor: ColorX.green,
//                     //         value: agree,
//                     //         onChanged: (value) {
//                     //           setState(() {
//                     //             agree = value ?? false;
//                     //           });
//                     //         },
//                     //       ),
//                     //       SizedBox(
//                     //         width: MediaQuery.of(context).size.width * 0.8,
//                     //         child: Text(
//                     //           "By continuing, you agree to our privacy policies and Terms & Conditions.",
//                     //           style: TextStyle(fontSize: 15),
//                     //         ),
//                     //       )
//                     //     ],
//                     //   ),
//                     // ),
//                     // CustomButton(
//                     //   buttonText: "Request OTP",
//                     //   disabled: agree,
//                     //   onTap: () {
//                     //     print("hi");
//                     //   },
//                     // ),
//                     // GestureDetector(
//                     //   onTap: () {},
//                     //   child: Center(
//                     //     child: Padding(
//                     //       padding: const EdgeInsets.all(15.0),
//                     //       child: Text(
//                     //         "Existing User? Sign in",
//                     //         style: TextStyle(
//                     //             fontSize: 16,
//                     //             fontWeight: FontWeight.w600,
//                     //             color: ColorX.backgroundBlue),
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),

//                     // // OTP screen starts from here
//                     // Row(
//                     //   children: [
//                     //     Text(
//                     //       'Enter OTP',
//                     //       style: TextStyle(
//                     //           fontSize: 24, fontWeight: FontWeight.w500),
//                     //     ),
//                     //   ],
//                     // ),
//                     // SizedBox(
//                     //   height: 10,
//                     // ),
//                     // Text(
//                     //   "Verify OTP, Sent on ",
//                     //   style:
//                     //       TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                     // ),
//                     // Row(
//                     //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     //   children: List.generate(4, (index) {
//                     //     return Container(
//                     //       padding: EdgeInsets.symmetric(vertical: 16),
//                     //       width: 50,
//                     //       child: TextFormField(
//                     //         controller: _otpControllers[index],
//                     //         keyboardType: TextInputType.number,
//                     //         textAlign: TextAlign.center,
//                     //         maxLength: 1,
//                     //         // style: theme.textTheme.headlineSmall,
//                     //         decoration: InputDecoration(
//                     //           counterText: '',
//                     //           filled: true,
//                     //           fillColor: const Color(0xFFF3F8FF),
//                     //           enabledBorder: OutlineInputBorder(
//                     //             borderRadius: BorderRadius.circular(8.0),
//                     //             borderSide:
//                     //                 const BorderSide(color: Color(0xFFD9D9D9)),
//                     //           ),
//                     //           focusedBorder: OutlineInputBorder(
//                     //             borderRadius: BorderRadius.circular(8.0),
//                     //             borderSide:
//                     //                 const BorderSide(color: Color(0xFF1573FE)),
//                     //           ),
//                     //         ),
//                     //         onChanged: (value) {
//                     //           if (value.length == 1 && index < 3) {
//                     //             FocusScope.of(context).nextFocus();
//                     //           } else if (value.isEmpty && index > 0) {
//                     //             FocusScope.of(context).previousFocus();
//                     //           }
//                     //         },
//                     //       ),
//                     //     );
//                     //   }),
//                     // ),
//                     // Text(
//                     //   "00:20",
//                     //   style:
//                     //       TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//                     // ),
//                     // SizedBox(
//                     //   height: 50,
//                     // ),
//                     // CustomButton(
//                     //   buttonText: "Verify",
//                     //   disabled: true,
//                     //   onTap: () {},
//                     // ),

//                     // Password setting screen starts here
//                     // Text(
//                     //   'Create a password',
//                     //   style:
//                     //       TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//                     // ),
//                     // SizedBox(
//                     //   height: 10,
//                     // ),
//                     // CustomInputContainer(
//                     //     inputTitle: "Enter password",
//                     //     inputWidget:
//                     //         CustomInputField(hintText: "Enter password")),
//                     // SizedBox(
//                     //   height: 10,
//                     // ),
//                     // CustomInputContainer(
//                     //     inputTitle: "Re enter password",
//                     //     inputWidget:
//                     //         CustomInputField(hintText: "Re enter password")),
//                     // SizedBox(
//                     //   height: 10,
//                     // ),
//                     // SizedBox(
//                     //   width: MediaQuery.of(context).size.width,
//                     //   child: Text(
//                     //     "*your password must include at least 8 characters, inclusive of alt least 1 special character",
//                     //     style: TextStyle(fontSize: 15),
//                     //   ),
//                     // ),
//                     // SizedBox(
//                     //   height: 20,
//                     // ),
//                     // CustomButton(
//                     //   buttonText: "Request OTP",
//                     //   disabled: true,
//                     //   onTap: () {
//                     //     print("hi");
//                     //   },
//                     // ),

//                     //Signin Screen
//                     Text(
//                       'Please enter your credentials',
//                       style:
//                           TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     CustomInputContainer(
//                       inputTitle: "Mobile Number",
//                       inputWidget: CustomPhoneWidget(
//                         onchanged: (phone) {
//                           print(phone.completeNumber);
//                         },
//                       ),
//                     ),

//                     CustomInputContainer(
//                         inputTitle: "Enter password",
//                         inputWidget: CustomInputField(
//                           hintText: "Enter password",
//                           password: true,
//                         )),

//                     SizedBox(
//                       height: 20,
//                     ),
//                     CustomButton(
//                       buttonText: "Request OTP",
//                       disabled: true,
//                       onTap: () {
//                         print("hi");
//                       },
//                     ),
//                     GestureDetector(
//                       onTap: () {},
//                       child: Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Text(
//                             "New to CreditSea? Create an account",
//                             style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 color: ColorX.backgroundBlue),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// ---------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------
// ---------------------------------------------------------------------------------------------------------------------------







// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:creditsea_flutter_assignment/config/assets.dart';
// import 'package:creditsea_flutter_assignment/config/color.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_input_container.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_input_field.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_phone_input.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_tile.dart';
// import 'package:creditsea_flutter_assignment/widget/custom_top_container.dart';
// import 'package:creditsea_flutter_assignment/widget/custombutton.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// /// Controller for handling authentication flow state
// class SignInController extends GetxController {
//   // 0: Mobile screen, 1: OTP, 2: Password, 3: Signin
//   var currentStep = 0.obs;

//   // For the mobile screen agreement
//   var agree = false.obs;

//   // OTP text controllers
//   final otpControllers = List.generate(4, (_) => TextEditingController());

//   void nextStep() {
//     if (currentStep.value < 3) {
//       currentStep.value++;
//     }
//   }

//   void goToStep(int step) {
//     currentStep.value = step;
//   }
// }

// class SignInPage extends StatefulWidget {
//   const SignInPage({super.key});

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// final List<Widget> _pages = [
//   CustomTopContainer(
//     title: "Flexible Loan Options",
//     description: "Loan types to cater to different financial needs",
//     mainContent: Container(
//       padding: EdgeInsets.symmetric(vertical: 20),
//       width: 200,
//       height: 260,
//       child: GridView.count(
//         crossAxisCount: 2,
//         crossAxisSpacing: 20.0,
//         mainAxisSpacing: 20.0,
//         children: [
//           CustomTile(
//             image: Assets.car,
//             size: 80,
//           ),
//           CustomTile(
//             image: Assets.bike,
//             size: 80,
//           ),
//           CustomTile(
//             image: Assets.laptop,
//             size: 80,
//           ),
//           CustomTile(
//             image: Assets.phone,
//             size: 80,
//           ),
//         ],
//       ),
//     ),
//   ),
//   CustomTopContainer(
//     title: "Instant Loan Approval",
//     description: "Users will receive approval within minutes",
//     mainContent: Container(
//       margin: EdgeInsets.symmetric(vertical: 20),
//       width: 200,
//       child: CustomTile(image: Assets.bill, size: 200),
//     ),
//   ),
//   CustomTopContainer(
//     title: "24x7 Customer Care",
//     description: "Dedicated customer support team",
//     mainContent: Container(
//       margin: EdgeInsets.symmetric(vertical: 20),
//       width: 200,
//       child: CustomTile(image: Assets.bill, size: 200),
//     ),
//   ),
// ];

// class _SignInPageState extends State<SignInPage> {
//   // Use GetX for state management
//   final SignInController controller = Get.put(SignInController());
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: ColorX.backgroundBlue,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Top carousel section (unchanged)
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.50,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CarouselSlider(
//                       options: CarouselOptions(
//                         viewportFraction: 1.0,
//                         aspectRatio: 16 / 9,
//                         height: MediaQuery.of(context).size.height * 0.47,
//                         autoPlay: true,
//                         onPageChanged: (index, reason) {
//                           setState(() => _currentIndex = index);
//                         },
//                       ),
//                       items: _pages,
//                       carouselController: CarouselSliderController(),
//                     ),
//                     AnimatedSmoothIndicator(
//                       activeIndex: _currentIndex,
//                       count: _pages.length,
//                       effect: WormEffect(
//                         dotHeight: 10,
//                         dotWidth: 10,
//                         activeDotColor: Colors.blueAccent,
//                         dotColor: Colors.grey,
//                       ),
//                       onDotClicked: (index) {
//                         // Optional: add carousel jump logic here
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               // Bottom container with multi-step authentication screens
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.45,
//                 width: MediaQuery.of(context).size.width,
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 26, horizontal: 16),
//                 decoration: const BoxDecoration(
//                   color: ColorX.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       topRight: Radius.circular(20)),
//                 ),
//                 child: Obx(() {
//                   // Show different screens based on current step
//                   switch (controller.currentStep.value) {
//                     case 0:
//                       return _buildMobileScreen();
//                     case 1:
//                       return _buildOTPScreen();
//                     case 2:
//                       return _buildPasswordScreen();
//                     case 3:
//                       return _buildSignInScreen();
//                     default:
//                       return Container();
//                   }
//                 }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ------------------- Step 0: Mobile Number Screen ------------------- //
//   Widget _buildMobileScreen() {
//     var phoneNumber='';
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Welcome to Credit Sea!',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 10),
//         CustomInputContainer(
//           inputTitle: "Mobile Number",
//           inputWidget: CustomPhoneWidget(
//             onchanged: (phone) {
//               phoneNumber=phone.completeNumber.toString();
//             },
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 20.0),
//           child: Row(
//             children: [
//               Obx(() => Checkbox(
//                     activeColor: ColorX.green,
//                     value: controller.agree.value,
//                     onChanged: (value) {
//                       controller.agree.value = value ?? false;
//                     },
//                   )),
//               const SizedBox(width: 8),
//               Expanded(
//                 child: Text(
//                   "By continuing, you agree to our privacy policies and Terms & Conditions.",
//                   style: const TextStyle(fontSize: 15),
//                 ),
//               )
//             ],
//           ),
//         ),
//         CustomButton(
//           buttonText: "Request OTP",
//           disabled: !controller.agree.value,
//           onTap: () {
//             controller.nextStep();
//           },
//         ),
//         GestureDetector(
//           onTap: () {
//             // If the user is an existing user, go directly to sign in
//             controller.goToStep(3);
//           },
//           child: const Center(
//             child: Padding(
//               padding: EdgeInsets.all(15.0),
//               child: Text(
//                 "Existing User? Sign in",
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: ColorX.backgroundBlue),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   // ------------------- Step 1: OTP Screen ------------------- //
//   Widget _buildOTPScreen() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Enter OTP',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 10),
//         const Text(
//           "Verify OTP, Sent on ",
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 10),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: List.generate(4, (index) {
//             return Container(
//               padding: const EdgeInsets.symmetric(vertical: 16),
//               width: 50,
//               child: TextFormField(
//                 controller: controller.otpControllers[index],
//                 keyboardType: TextInputType.number,
//                 textAlign: TextAlign.center,
//                 maxLength: 1,
//                 decoration: InputDecoration(
//                   counterText: '',
//                   filled: true,
//                   fillColor: const Color(0xFFF3F8FF),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                     borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                     borderSide: const BorderSide(color: Color(0xFF1573FE)),
//                   ),
//                 ),
//                 onChanged: (value) {
//                   if (value.length == 1 && index < 3) {
//                     FocusScope.of(context).nextFocus();
//                   } else if (value.isEmpty && index > 0) {
//                     FocusScope.of(context).previousFocus();
//                   }
//                 },
//               ),
//             );
//           }),
//         ),
//         const SizedBox(height: 50),
//         CustomButton(
//           buttonText: "Verify",
//           disabled: true,
//           onTap: () {
//             controller.nextStep();
//           },
//         ),
//       ],
//     );
//   }

//   // ------------------- Step 2: Password Setting Screen ------------------- //
//   Widget _buildPasswordScreen() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Create a password',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 10),
//         CustomInputContainer(
//           inputTitle: "Enter password",
//           inputWidget: CustomInputField(
//             hintText: "Enter password",
//             password: true,
//           ),
//         ),
//         const SizedBox(height: 10),
//         CustomInputContainer(
//           inputTitle: "Re-enter password",
//           inputWidget: CustomInputField(
//             hintText: "Re-enter password",
//             password: true,
//           ),
//         ),
//         const SizedBox(height: 10),
//         SizedBox(
//           width: MediaQuery.of(context).size.width,
//           child: const Text(
//             "*Your password must include at least 8 characters, including at least 1 special character",
//             style: TextStyle(fontSize: 15),
//           ),
//         ),
//         const SizedBox(height: 20),
//         CustomButton(
//           buttonText: "Continue",
//           disabled: true,
//           onTap: () {
//             controller.nextStep();
//           },
//         ),
//       ],
//     );
//   }

//   // ------------------- Step 3: Sign In Screen ------------------- //
//   Widget _buildSignInScreen() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Please enter your credentials',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
//         ),
//         const SizedBox(height: 10),
//         CustomInputContainer(
//           inputTitle: "Mobile Number",
//           inputWidget: CustomPhoneWidget(
//             onchanged: (phone) {
//               print(phone.completeNumber);
//             },
//           ),
//         ),
//         CustomInputContainer(
//           inputTitle: "Enter password",
//           inputWidget: CustomInputField(
//             hintText: "Enter password",
//             password: true,
//           ),
//         ),
//         const SizedBox(height: 20),
//         CustomButton(
//           buttonText: "Sign In",
//           disabled: false,
//           onTap: () {
//             // Insert your sign in logic here
//             print("Signing in...");
//           },
//         ),
//         GestureDetector(
//           onTap: () {
//             // For new users, send them back to the sign-up flow (mobile screen)
//             controller.goToStep(0);
//           },
//           child: const Center(
//             child: Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 "New to CreditSea? Create an account",
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: ColorX.backgroundBlue),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
