import 'package:flutter/material.dart';
import 'package:siddharthjain/config/theme.dart';
import 'package:siddharthjain/tab/about_page.dart';
import 'package:siddharthjain/widgets/ThemeSwitcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> tabWidgets = <Widget>[
    AboutPage(),
    //BlogPage(),
    //ProjectPage()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text('Sid J'),
        actions: <Widget>[
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn
                ? Icon(
                    Icons.wb_sunny,
                    color: colorPicker('lite'),
                  )
                : Icon(
                    Icons.lightbulb_outline,
                    color: colorPicker('dark'),
                  ),
//            Image.asset(
//                    Assets.lite,
//                    height: 20,
//                    width: 20,
//                  ),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          )
        ],
      ),
      body: Scaffold(
        backgroundColor: ThemeSwitcher.of(context).isDarkModeOn
            ? colorPicker('dark')
            : colorPicker('lite'),
        body: Center(
          child: AboutPage(),
        ),
      ),
//      bottomNavigationBar: BottomNavigationBar(
//        elevation: 0,
//        backgroundColor: ThemeSwitcher.of(context).isDarkModeOn
//            ? colorPicker('dark')
//            : colorPicker('lite'),
//        //orange,
//        items: const <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//            icon: Icon(Icons.account_circle),
//            title: Text('About'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.chrome_reader_mode),
//            title: Text('Blog'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.mobile_screen_share),
//            title: Text('Projects'),
//          )
//        ],
//        selectedItemColor: Theme.of(context).accentColor,
//        currentIndex: _selectedIndex,
//        onTap: (index) => setState(() => _selectedIndex = index),
//      ),
    );
  }
}
