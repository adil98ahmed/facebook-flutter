import 'package:facebook/sections/add_post.dart';
import 'package:facebook/sections/posts.dart';
import 'package:facebook/sections/reels.dart';
import 'package:facebook/sections/rightPannel.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * .6,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .60,
                    child: Reels(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .55,
                    child: AddPost(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .55,
                    child: Posts(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * .1,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: RightPannel(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// Row(
//       children: [
//         Padding(
//           padding: EdgeInsets.fromLTRB(
//               0, 0, 0, MediaQuery.of(context).viewInsets.bottom),
//           child: SingleChildScrollView(
//             child: Container(
//               color: Colors.black26,
//               child: Row(
//                 children: [
//                   Expanded(
//                       child: Container(
//                     height: MediaQuery.of(context).size.height,
//                     color: Colors.red,
//                   )),
//                   Expanded(
//                     child: Column(
//                       children: [AddPost(), Reels(), Posts()],
//                     ),
//                   ),
//                   Expanded(
//                       child: Container(
//                     height: MediaQuery.of(context).size.height,
//                     color: Colors.red,
//                   )),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
