import 'package:flutter/material.dart';
import 'package:health_app/widgets/Home%20Page/local%20widgets/header.dart';

class MailPage extends StatelessWidget {
  const MailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Header(
          headline: 'Send your health\nstatus to doctor.',
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                      child: Center(
                        child: Text(
                          'Send',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    onTap: () {
                      print('Clicked');
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Stack(
//       children: [
//         Header(
//           headline: "Send your health\nstatus to doctor.",
//         ),
//         Center(
//           child: Container(
//             width: 230,
//             height: 45,
//             color: Colors.transparent,
//             child: Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                     color: Colors.black, style: BorderStyle.solid, width: 1.0),
//                 color: Colors.transparent,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Center(
//                     child: FaIcon(FontAwesomeIcons.google),
//                   ),
//                   Center(
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 8),
//                       child: Text(
//                         'Login with Google',
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
