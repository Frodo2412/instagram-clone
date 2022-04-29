import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/responsive/mobile_screen_layout.dart';
import 'package:pomodoro/responsive/responsive_layout_screen.dart';
import 'package:pomodoro/responsive/web_screen_layout.dart';
import 'package:pomodoro/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyANGlVrmkNBQ1E0qCgpXwQrNBLhfk5N7ig",
          appId: "1:994831276502:web:2fa7a547fe637677a62c77",
          messagingSenderId: "994831276502",
          projectId: "instagram-clone-4a844",
          storageBucket: "instagram-clone-4a844.appspot.com"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResponsiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}

// class Pomodoro extends StatefulWidget {
//   const Pomodoro({Key? key}) : super(key: key);
//
//   @override
//   _PomodoroState createState() => _PomodoroState();
// }
//
// class _PomodoroState extends State<Pomodoro> {
//   double percent = 0;
//   static int timeInMinutes = 25;
//   int timeInSec = timeInMinutes * 60;
//
//   @override
//   Widget build(BuildContext context) {
//     var textStyle = TextStyle(color: Colors.white, fontSize: 80.0);
//     return SafeArea(
//         child: Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(
//           colors: [Color(0xFF1542BF), Color(0xFF51A8FF)],
//           begin: FractionalOffset(0.5, 1),
//         )),
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             const Padding(
//               padding: EdgeInsets.only(top: 18.0),
//               child: Text(
//                 "Let's be Productive!!",
//                 style: TextStyle(color: Colors.white, fontSize: 40.0),
//               ),
//             ),
//             Expanded(
//                 child: CircularPercentIndicator(
//               percent: percent,
//               animation: true,
//               animateFromLastPercent: true,
//               radius: 250,
//               lineWidth: 20.0,
//               progressColor: Colors.white,
//               center: Text("$timeInMinutes", style: textStyle),
//             )),
//             const SizedBox(
//               height: 30.0,
//             ),
//             Expanded(
//                 child: Container(
//               width: double.infinity,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30.0),
//                     topRight: Radius.circular(30.0)),
//               ),
//               child: Padding(
//                 padding:
//                     const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: Row(
//                         children: [
//                           Expanded(
//                               child: Column(children: [
//                             Text(
//                               "Study Timer",
//                               style: TextStyle(fontSize: 30.0),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Text("25", style: TextStyle(fontSize: 80.0))
//                           ])),
//                           Expanded(
//                               child: Column(children: [
//                             Text(
//                               "Pause Timer",
//                               style: TextStyle(fontSize: 30.0),
//                             ),
//                             SizedBox(
//                               height: 10.0,
//                             ),
//                             Text("5", style: TextStyle(fontSize: 80.0))
//                           ])),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                         padding: EdgeInsets.symmetric(vertical: 28.0),
//                         child: ElevatedButton(
//                           onPressed: () => {},
//                           style: ButtonStyle(
//                               backgroundColor:
//                                   ElevatedButton.styleFrom(color: Colors.blue),
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(100.0))),
//                           child: Text("Start"),
//                         ))
//                   ],
//                 ),
//               ),
//             ))
//           ],
//         ),
//       ),
//     ));
//   }
// }
