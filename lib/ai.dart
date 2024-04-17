import 'package:agron/components/my_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AiPage extends StatefulWidget {
  AiPage({Key? key}) : super(key: key);

  @override
  _AiPageState createState() => _AiPageState();
}

class _AiPageState extends State<AiPage> {
  TextEditingController textcontroller = TextEditingController();

  // @override
  //Widget build(BuildContext context) {
  // return Scaffold(
  // backgroundColor: Colors.black,
  // body: Container(
  //   width: double.infinity,
  //   height: double.infinity,
  //   clipBehavior: Clip.antiAlias,
  //   decoration: BoxDecoration(
  //     gradient: LinearGradient(
  //       begin: Alignment.topLeft,
  //       end: Alignment.bottomRight,
  //       colors: [Color(0xFF013220), Colors.black, Colors.white.withOpacity(0)],
  //     ),
  //   ),
  //   child: SingleChildScrollView(
  //   scrollDirection: Axis.vertical,
  //   child: Column(
  //     mainAxisAlignment: MainAxisAlignment.end,
  //     children: [
  //       Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 22.0,vertical: 35),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Row(
  //             children: [
  //               Image.asset('lib/Images/logo message.png'),
  //               Text(
  //               'Agron',
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 color: Colors.white,
  //                 fontSize: 25,
  //                 fontFamily: 'Sedgwick Ave Display',
  //                 fontWeight: FontWeight.w400,
  //                 height: 0,
  //               ),
  //             ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //     Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 22),
  //       child: Row(
  //         children: [
  //           Text(
  //           'AI',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontSize: 25,
  //             fontFamily: 'Sedgwick Ave Display',
  //             fontWeight: FontWeight.w400,
  //             height: 0,
  //           ),
  //         ),
  //         ],
  //       ),
  //     ),
  //     Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 22),
  //       child: Row(
  //         children: [
  //           Text(
  //           'This is the AI page',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //             color: Colors.white,
  //             fontSize: 25,
  //             fontFamily: 'Sedgwick Ave Display',
  //             fontWeight: FontWeight.w400,
  //             height: 0,
  //           ),
  //         ),
  //         ],
  //       ),
  //     ),
  //     //text field which can be used to enter text and it should be at the bottom of the page
  //     Padding(
  //       padding: const EdgeInsets.all(8.0),

  //       child: TextField(
  //         controller: textcontroller,
  //         decoration: InputDecoration(
  //           enabledBorder: OutlineInputBorder(
  //             borderSide: const BorderSide(color:Colors.white,
  //                 ),
  //                 borderRadius: BorderRadius.circular(10),
  //           ),
  //           focusedBorder: OutlineInputBorder(
  //             borderSide: const BorderSide(color:Colors.white,
  //                 ),
  //                 borderRadius: BorderRadius.circular(10),
  //           ),
  //           labelText: 'Enter text',
  //         ),
  //       ),
  //     ),

  //     ],
  //   ),
  // ),
  // ),
  //   body: Column(
  //     children: [
  //       Container(
  //         height: 500,
  //         width: double.infinity,
  //         color: Colors.amber,
  //       ),
  //       Positioned(
  //         bottom: 0,
  //         top: 0,
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.end,
  //           children: [
  //             TextFormField(
  //               decoration: InputDecoration(
  //                 border: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(10.0),
  //                 ),
  //                 filled: true,
  //                 hintStyle: TextStyle(color: Colors.grey[800]),
  //                 hintText: "Type in your text",
  //                 fillColor: Colors.white70,
  //               ),
  //             )
  //           ],
  //         ),
  //       )
  //     ],
  //   ),
  // );
  //}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: [
//                       Color(0xFF013220),
//                       Colors.black,
//                       Colors.white.withOpacity(0.0)
//                     ]),
//               ),
              
//               child: const Center(
//                 child: Text(
//                     'This is your home page'), // body: SingleChildScrollView(...)
//               ),
//             ),
//           ),
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'Enter text here',
//               contentPadding: const EdgeInsets.all(15),
//               border:
//                   OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              
//               fillColor: Colors.transparent,
//               filled: true,
//               hintStyle: TextStyle(
                
//                 color: Colors.black26,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF013220),
                    Colors.black,
                    Colors.white.withOpacity(0.0)
                  ],
                ),
              ),
              child: Stack(
                children: [
                  
                  Center(
                    child: Image.asset(
                      'lib/Images/Frame 1.png',
                      width: 100,
                      height: 100,
                      // Adjust width and height according to your requirements
                    ),
                  ),
                  Center(
                    // child: Text(
                    //   'This is your home page',
                    // ),
                  ),
                ],
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter text here',
              contentPadding: const EdgeInsets.all(15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              fillColor: Colors.transparent,
              filled: true,
              hintStyle: TextStyle(
                color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}