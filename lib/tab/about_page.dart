import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siddharthjain/config/assets.dart';
import 'package:siddharthjain/config/constants.dart';

// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:siddharthjain/config/theme.dart';
import 'package:siddharthjain/widgets/ThemeSwitcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 100.0,
            backgroundColor: ThemeSwitcher.of(context).isDarkModeOn
                ? colorPicker('lite')[200]
                : colorPicker('dark')[200],
            backgroundImage: Image.asset(Assets.avatar_bg).image,
          ),
          Text(
            'Siddharth Jain',
            textScaleFactor: 6,
            style: TextStyle(
              fontFamily: 'Bellandha',
              fontSize: 18,
              height: 1.5,
              color: ThemeSwitcher.of(context).isDarkModeOn
                  ? colorPicker('lite')
                  : colorPicker('dark'),
            ),
          ),
          Text(
            'Flutter Enthusiast. Traveller. Reader. Artist.',
//            style: Theme.of(context).textTheme.caption,
            style: TextStyle(
              color: ThemeSwitcher.of(context).isDarkModeOn
                  ? Colors.grey
                  : colorPicker('dark')[600],
              fontFamily: 'OpenSans',
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ButtonTheme(
                minWidth: 20,
                child: FlatButton(
                  child: ThemeSwitcher.of(context).isDarkModeOn
                      ? Image.asset(
                          Assets.github_l,
                          width: 20,
                          height: 20,
                        )
                      : Image.asset(
                          Assets.github_d,
                          width: 20,
                          height: 20,
                        ),
                  onPressed: () => html.window
                      .open(Constants.PROFILE_GITHUB, 'justsiddharth'),
                ),
              ),
              ButtonTheme(
                minWidth: 20,
                child: FlatButton(
                  child: ThemeSwitcher.of(context).isDarkModeOn
                      ? Image.asset(
                          Assets.gitlab_l,
                          width: 20,
                          height: 20,
                        )
                      : Image.asset(
                          Assets.gitlab_d,
                          width: 20,
                          height: 20,
                        ),
                  onPressed: () => html.window
                      .open(Constants.PROFILE_GITLAB, 'justsiddharth'),
                ),
              ),
              ButtonTheme(
                minWidth: 20,
                child: FlatButton(
                  child: ThemeSwitcher.of(context).isDarkModeOn
                      ? Image.asset(
                          Assets.linkedin_l,
                          width: 20,
                          height: 20,
                        )
                      : Image.asset(
                          Assets.linkedin_d,
                          width: 20,
                          height: 20,
                        ),
                  onPressed: () => html.window
                      .open(Constants.PROFILE_LINKEDIN, 'justsiddharth'),
                ),
              ),
              ButtonTheme(
                minWidth: 20,
                child: FlatButton(
                  child: ThemeSwitcher.of(context).isDarkModeOn
                      ? Image.asset(
                          Assets.medium_l,
                          width: 20,
                          height: 20,
                        )
                      : Image.asset(
                          Assets.medium_d,
                          width: 20,
                          height: 20,
                        ),
                  onPressed: () => html.window
                      .open(Constants.PROFILE_MEDIUM, 'justsiddharth'),
                ),
              ),
              ButtonTheme(
                minWidth: 20,
                child: FlatButton(
                  child: ThemeSwitcher.of(context).isDarkModeOn
                      ? Image.asset(
                          Assets.instagram_l,
                          width: 20,
                          height: 20,
                        )
                      : Image.asset(
                          Assets.instagram_d,
                          width: 20,
                          height: 20,
                        ),
                  onPressed: () => html.window
                      .open(Constants.PROFILE_INSTAGRAM, 'justsiddharth'),
                ),
              ),
              ButtonTheme(
                minWidth: 20,
                child: FlatButton(
                  child: ThemeSwitcher.of(context).isDarkModeOn
                      ? Image.asset(
                          Assets.twitter_l,
                          width: 20,
                          height: 20,
                        )
                      : Image.asset(
                          Assets.twitter_d,
                          width: 20,
                          height: 20,
                        ),
                  onPressed: () => html.window
                      .open(Constants.PROFILE_TWITTER, 'justsiddharth'),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(
                width: 800,
                child: Text(
                  '',
//            style: Theme.of(context).textTheme.caption,
                  style: TextStyle(
                    color: ThemeSwitcher.of(context).isDarkModeOn
                        ? colorPicker('lite')
                        : colorPicker('dark'),
                    fontFamily: 'OpenSansLite',
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
