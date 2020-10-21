import 'package:flutter/material.dart';
import 'package:tce_app/app_theme.dart';

import 'category_list_view.dart';
import 'course_info_screen.dart';
import 'design_course_app_theme.dart';
import 'model/homelist.dart';
// import 'package:circular_profile_avatar/circular_profile_avatar.dart';

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
    animationController = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
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
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        title: Text(
          'TCE',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            letterSpacing: 0,
            color: DesignCourseAppTheme.darkerText,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.transparent, //remove this when you add image.
              ),
              child: Image.asset('assets/design_course/userImage.png'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          // Container(
          //   child: FutureBuilder<bool>(
          //     future: getData(),
          //     builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          //       if (!snapshot.hasData) {
          //         return const SizedBox();
          //       } else {
          //         return Padding(
          //           padding: EdgeInsets.only(
          //               top: MediaQuery.of(context).padding.top),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: <Widget>[
          //               Expanded(
          //                 child: FutureBuilder<bool>(
          //                   future: getData(),
          //                   builder: (BuildContext context,
          //                       AsyncSnapshot<bool> snapshot) {
          //                     if (!snapshot.hasData) {
          //                       return const SizedBox();
          //                     } else {
          //                       return GridView(
          //                         padding: const EdgeInsets.only(
          //                             top: 0, left: 12, right: 12),
          //                         physics: const BouncingScrollPhysics(),
          //                         scrollDirection: Axis.vertical,
          //                         children: List<Widget>.generate(
          //                           homeList.length,
          //                           (int index) {
          //                             final int count = homeList.length;
          //                             final Animation<double> animation =
          //                                 Tween<double>(begin: 0.0, end: 1.0)
          //                                     .animate(
          //                               CurvedAnimation(
          //                                 parent: animationController,
          //                                 curve: Interval(
          //                                     (1 / count) * index, 1.0,
          //                                     curve: Curves.fastOutSlowIn),
          //                               ),
          //                             );
          //                             animationController.forward();
          //                             return HomeListView(
          //                               animation: animation,
          //                               animationController:
          //                                   animationController,
          //                               listData: homeList[index],
          //                               callBack: () {
          //                                 Navigator.push<dynamic>(
          //                                   context,
          //                                   MaterialPageRoute<dynamic>(
          //                                     builder: (BuildContext context) =>
          //                                         homeList[index]
          //                                             .navigateScreen,
          //                                   ),
          //                                 );
          //                               },
          //                             );
          //                           },
          //                         ),
          //                         gridDelegate:
          //                             SliverGridDelegateWithFixedCrossAxisCount(
          //                           crossAxisCount: multiple ? 1 : 1,
          //                         ),
          //                       );
          //                     }
          //                   },
          //                 ),
          //               ),
          //             ],
          //           ),
          //         );
          //       }
          //     },
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 20,
            ),
            child: Container(
              child: Text(
                'Lorem Ipsum',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              left: 20,
              right: 20,
            ),
            child: Container(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 23,
              left: 20,
            ),
            child: Container(
              child: Text(
                'Lorem Ipsum',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 3,
              left: 20,
              right: 20,
            ),
            child: Container(
              child: Text(
                'Lorem ipsum dolor sit amet',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 23,
              left: 20,
            ),
            child: Container(
              child: Text(
                'Lorem Ipsum',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 20,
                ),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/bg.png",),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 20,
                ),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/bg.png",),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 20,
                ),
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/bg.png",),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

@override
class HomeListView extends StatelessWidget {
  const HomeListView({Key key, this.listData, this.callBack, this.animationController, this.animation})
      : super(key: key);

  final HomeList listData;
  final VoidCallback callBack;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  void moveTo(context) {
    Navigator.push<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => CourseInfoScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
          child: Text(
            'Browse Projects',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              letterSpacing: 0,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),
        // Container(
        //   width:280,
        //   height: 100,
        //   child: Image.asset('assets/design_course/userImage.png'),
        // ),
        const SizedBox(
          height: 16,
        ),
        CategoryListView(
          callBack: () {
            moveTo(context);
          },
        ),
      ],
    );
  }
}
