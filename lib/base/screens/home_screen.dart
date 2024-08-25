import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/Reusable_Widget/app_double_text.dart';
import 'package:ticket_app/base/Reusable_Widget/app_media.dart';
import 'package:ticket_app/base/Reusable_Widget/app_styles.dart';
import 'package:ticket_app/base/Reusable_Widget/appbar_text_style.dart';
import 'package:ticket_app/base/Reusable_Widget/tickets_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      
      body: ListView(
        children: [
          const SizedBox(height: 40,),

          Container(
            padding: const EdgeInsets.symmetric(horizontal : 20),

            child: Column(
              children: [
                
                // first row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        AppbarTextStyle('Good Morning'),
                        SizedBox(height: 5,),
                        AppbarTextStyle2('Book Tickets'),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(

                        image: const DecorationImage(image: AssetImage(AppMedia.logo)),

                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                ],),
                
                const SizedBox(height: 25,),
                // second row
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),

                  ),

                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text('Search'),
                  ],) ,

                ),
                
                const SizedBox(height: 40,),
                const AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all'),

                const SizedBox(height: 20,),

                const TicketsView(),

              ],
            ),
          ),

        ],
      ), 
    );
  }
}