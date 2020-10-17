import 'package:tce_app/app_theme.dart';
import 'package:flutter/material.dart';
import 'category_list_view.dart';
import 'course_info_screen.dart';
import 'design_course_app_theme.dart';
import 'model/homelist.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  List<HomeList> homeList = HomeList.homeList;
  AnimationController animationController;
  bool multiple = true;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'TCE',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            letterSpacing: 0,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: new Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, //remove this when you add image.
              ),
              child: Image.asset('assets/design_course/userImage.png'),
            ),
          ),
        ],
      ),
      // body: SingleChildScrollView(
      //   // child: Column(
      //   //   children: [
      //   //     // Container(
      //   //     //   decoration: BoxDecoration(
      //   //     //     borderRadius: BorderRadius.only(
      //   //     //       bottomLeft: Radius.circular(30.0),
      //   //     //       bottomRight: Radius.circular(30.0),
      //   //     //     ),
      //   //     //     color: Color(0xff0259CB),
      //   //     //   ),
      //   //     //   height: 370,
      //   //     //   child: ListView(
      //   //     //     children: <Widget>[
      //   //     //       Container(
      //   //     //         child: FutureBuilder<bool>(
      //   //     //           future: getData(),
      //   //     //           builder:
      //   //     //               (BuildContext context, AsyncSnapshot<bool> snapshot) {
      //   //     //             if (!snapshot.hasData) {
      //   //     //               return const SizedBox();
      //   //     //             } else {
      //   //     //               return Padding(
      //   //     //                 padding: EdgeInsets.only(
      //   //     //                     top: MediaQuery.of(context).padding.top),
      //   //     //                 child: Column(
      //   //     //                   mainAxisAlignment: MainAxisAlignment.center,
      //   //     //                   crossAxisAlignment: CrossAxisAlignment.start,
      //   //     //                   children: <Widget>[
      //   //     //                     appBar(),
      //   //     //                     Expanded(
      //   //     //                       child: FutureBuilder<bool>(
      //   //     //                         future: getData(),
      //   //     //                         builder: (BuildContext context,
      //   //     //                             AsyncSnapshot<bool> snapshot) {
      //   //     //                           if (!snapshot.hasData) {
      //   //     //                             return const SizedBox();
      //   //     //                           } else {
      //   //     //                             return GridView(
      //   //     //                               padding: const EdgeInsets.only(
      //   //     //                                   top: 0, left: 12, right: 12),
      //   //     //                               physics:
      //   //     //                                   const BouncingScrollPhysics(),
      //   //     //                               scrollDirection: Axis.vertical,
      //   //     //                               children: List<Widget>.generate(
      //   //     //                                 homeList.length,
      //   //     //                                 (int index) {
      //   //     //                                   final int count = homeList.length;
      //   //     //                                   final Animation<double>
      //   //     //                                       animation = Tween<double>(
      //   //     //                                               begin: 0.0, end: 1.0)
      //   //     //                                           .animate(
      //   //     //                                     CurvedAnimation(
      //   //     //                                       parent: animationController,
      //   //     //                                       curve: Interval(
      //   //     //                                           (1 / count) * index, 1.0,
      //   //     //                                           curve:
      //   //     //                                               Curves.fastOutSlowIn),
      //   //     //                                     ),
      //   //     //                                   );
      //   //     //                                   animationController.forward();
      //   //     //                                   return HomeListView(
      //   //     //                                     animation: animation,
      //   //     //                                     animationController:
      //   //     //                                         animationController,
      //   //     //                                     listData: homeList[index],
      //   //     //                                     callBack: () {
      //   //     //                                       Navigator.push<dynamic>(
      //   //     //                                         context,
      //   //     //                                         MaterialPageRoute<dynamic>(
      //   //     //                                           builder: (BuildContext
      //   //     //                                                   context) =>
      //   //     //                                               homeList[index]
      //   //     //                                                   .navigateScreen,
      //   //     //                                         ),
      //   //     //                                       );
      //   //     //                                     },
      //   //     //                                   );
      //   //     //                                 },
      //   //     //                               ),
      //   //     //                               gridDelegate:
      //   //     //                                   SliverGridDelegateWithFixedCrossAxisCount(
      //   //     //                                 crossAxisCount: multiple ? 1 : 1,
      //   //     //                               ),
      //   //     //                             );
      //   //     //                           }
      //   //     //                         },
      //   //     //                       ),
      //   //     //                     ),
      //   //     //                   ],
      //   //     //                 ),
      //   //     //               );
      //   //     //             }
      //   //     //           },
      //   //     //         ),
      //   //     //       ),
      //   //     //     ],
      //   //     //   ),
      //   //     // ),
      //   //   ],
      //   // ),
      // ),
    );
  }

  // Widget appBar() {
  //   return Container(
  //     child: SizedBox(
  //       height: AppBar().preferredSize.height,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Padding(
  //             padding: const EdgeInsets.only(top: 8, left: 8),
  //             child: Container(
  //               width: AppBar().preferredSize.height - 8,
  //               height: AppBar().preferredSize.height - 8,
  //             ),
  //           ),
  //           Expanded(
  //             child: Center(
  //               child: Padding(
  //                 padding: const EdgeInsets.only(top: 4),
  //                 child: Text(
  //                   'TCE',
  //                   style: TextStyle(
  //                     fontSize: 22,
  //                     color: AppTheme.darkText,
  //                     fontWeight: FontWeight.w700,
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(13.0),
  //             child: Container(
  //               width: 28,
  //               height: 28,
  //               child: Image.asset('assets/design_course/userImage.png'),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

// @override
// class HomeListView extends StatelessWidget {
//   const HomeListView(
//       {Key key,
//       this.listData,
//       this.callBack,
//       this.animationController,
//       this.animation})
//       : super(key: key);
//
//   final HomeList listData;
//   final VoidCallback callBack;
//   final AnimationController animationController;
//   final Animation<dynamic> animation;

// void moveTo(context) {
//   Navigator.push<dynamic>(
//     context,
//     MaterialPageRoute<dynamic>(
//       builder: (BuildContext context) => CourseInfoScreen(),
//     ),
//   );
// }

// @override
// Widget build(BuildContext context) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Padding(
//         padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
//         child: Text(
//           'Browse Projects',
//           textAlign: TextAlign.left,
//           style: TextStyle(
//             fontWeight: FontWeight.w600,
//             fontSize: 18,
//             letterSpacing: 0,
//             color: DesignCourseAppTheme.darkerText,
//           ),
//         ),
//       ),
//       // Container(
//       //   width:280,
//       //   height: 100,
//       //   child: Image.asset('assets/design_course/userImage.png'),
//       // ),
//       const SizedBox(
//         height: 16,
//       ),
//       CategoryListView(
//         callBack: () {
//           moveTo(context);
//         },
//       ),
//     ],
//   );
// }
