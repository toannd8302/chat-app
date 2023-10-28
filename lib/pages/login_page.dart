import 'package:chat_mobile_app/pages/home_page.dart';
import 'package:chat_mobile_app/pages/register_page.dart';
import 'package:chat_mobile_app/widgets/my_button.dart';
import 'package:chat_mobile_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
//   _facebookeLogin() async {
//     // Create an instance of FacebookLogin
//     final fb = FacebookLogin();
//     await fb.logOut();

// // Log in
//     final res = await fb.logIn(permissions: [
//       FacebookPermission.publicProfile,
//       FacebookPermission.email,
//     ]);
//     // Check result status
//     switch (res.status) {
//       case FacebookLoginStatus.success:
//         // Logged in

//         // Send access token to server for validation and auth
//         final FacebookAccessToken? accessToken = res.accessToken;
//         print('Access token: ${accessToken?.token}');
//         print('login success');
//         // Get profile data
//         final profile = await fb.getUserProfile();
//         print('Hello, ${profile!.name}! You ID: ${profile!.userId}');

//         // Get user profile image url
//         final imageUrl = await fb.getProfileImageUrl(width: 100);
//         print('Your profile image: $imageUrl');

//         // Get email (since we request email permission)
//         final email = await fb.getUserEmail();
//         // But user can decline permission
//         if (email != null) {
//           print('And your email is $email');

//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const HomePage()));
//         }

//         break;
//       case FacebookLoginStatus.cancel:
//         // User cancel log in
//         break;
//       case FacebookLoginStatus.error:
//         // Log in failed
//         print('Error while log in: ${res.error}');
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           colors: [
//             Colors.deepOrange,
//             Colors.deepOrangeAccent,
//             Colors.orangeAccent
//           ],
//         )),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(
//               height: 80,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Login",
//                       style: TextStyle(
//                         color: Theme.of(context).colorScheme.onPrimary,
//                         fontSize: 40,
//                       )),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Welcome back",
//                     style: TextStyle(
//                       color: Theme.of(context).colorScheme.onPrimary,
//                       fontSize: 18,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(60),
//                     topRight: Radius.circular(60),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     const SizedBox(
//                       height: 60,
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.white,
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Color.fromRGBO(225, 95, 27, .3),
//                             blurRadius: 20,
//                             offset: Offset(0, 10),
//                           ),
//                         ],
//                       ),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "Email or Phone number",
//                           hintStyle: TextStyle(color: Colors.grey[400]),
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Colors.white,
//                         boxShadow: const [
//                           BoxShadow(
//                             color: Color.fromRGBO(225, 95, 27, .3),
//                             blurRadius: 20,
//                             offset: Offset(0, 10),
//                           ),
//                         ],
//                       ),
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "Email or Phone number",
//                           hintStyle: TextStyle(color: Colors.grey[400]),
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     const Text(
//                       "Forgot Password?",
//                       style: TextStyle(color: Colors.grey),
//                     ),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     //Login Button
//                     Container(
//                       height: 50,
//                       margin: EdgeInsets.symmetric(horizontal: 50),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: Colors.deepOrangeAccent,
//                       ),
//                       child: Center(
//                         child: Text("Login",
//                             style: TextStyle(
//                               color: Theme.of(context).colorScheme.onPrimary,
//                               fontWeight: FontWeight.bold,
//                             )),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 80,
//                     ),
//                     //Login with Google and Facebook
//                     Row(
//                       children: <Widget>[
//                         Expanded(
//                           child: Container(
//                             margin: EdgeInsets.symmetric(horizontal: 20),
//                             height: 50,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.white,
//                             ),
//                             child: Center(
//                                 child: RichText(
//                               text: const TextSpan(
//                                 children: <TextSpan>[
//                                   TextSpan(
//                                       text: 'G',
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           color: Colors.blue,
//                                           fontWeight: FontWeight.bold)),
//                                   TextSpan(
//                                       text: 'm',
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           color: Colors.redAccent,
//                                           fontWeight: FontWeight.bold)),
//                                   TextSpan(
//                                       text: 'a',
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           color: Colors.yellow,
//                                           fontWeight: FontWeight.bold)),
//                                   TextSpan(
//                                       text: 'i',
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           color: Colors.blue,
//                                           fontWeight: FontWeight.bold)),
//                                   TextSpan(
//                                       text: 'l',
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           color: Colors.green,
//                                           fontWeight: FontWeight.bold)),
//                                 ],
//                               ),
//                             )),
//                           ),
//                         ),
//                         Expanded(
//                           child: ElevatedButton(
//                             onPressed: () {
//                               _facebookeLogin();
//                             },
//                             child: Container(
//                               margin: EdgeInsets.symmetric(horizontal: 20),
//                               height: 50,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.blue,
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   "Facebook",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          margin: EdgeInsets.only(top: 120),
          child: Column(
            children: [
              //logo
              Icon(
                Icons.message,
                size: 80,
                color: Colors.grey[700],
              ),
              //welcome back massage
              const Text(
                "Welcome back",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              //email textfield
              MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  oscureText: false),
              const SizedBox(height: 10),
              //password textfield
              MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  oscureText: true),
              //sign in button
              const SizedBox(height: 15),
              MyButton(text: "Sign in", onTap: () {}),
              //not have account? Register now
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not has account?'),
                  SizedBox(width: 5),
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return RegisterPage(); // Thay "OtherPage()" bằng trang bạn muốn chuyển hướng đến.
                      }));
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              //forgot password
            ],
          ),
        ),
      ),
    )));
  }
}
