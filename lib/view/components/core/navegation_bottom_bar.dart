import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mqr/view/pages/home/Home_page.dart';
import 'package:mqr/view/pages/news/News.dart';
import 'package:mqr/view/pages/settings/settings.dart';


Widget GBar()
{
  return Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
      child: GNav(
        backgroundColor: Colors.white,
        color: Colors.black,
        activeColor: Colors.deepOrange,
        duration: Duration(milliseconds: 270),
        tabBackgroundColor: Colors.grey.shade200,
        gap: 15,
        onTabChange: (index){

        },
        padding: EdgeInsets.all(16),
        tabs: [
          GButton(icon: Icons.home,
            text: 'Home',
          ),
          GButton(icon: Icons.newspaper,
            text: 'News',
          ),
          GButton(icon: Icons.settings,
            text: 'settings',
          ),
        ],

      ),
    ),
  );
}