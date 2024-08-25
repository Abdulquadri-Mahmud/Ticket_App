import 'package:flutter/material.dart';
import 'package:ticket_app/base/Reusable_Widget/app_styles.dart';
import 'package:ticket_app/base/Reusable_Widget/widgets/Text_style_third.dart';
import 'package:ticket_app/base/Reusable_Widget/widgets/app_layout_builder.dart';
import 'package:ticket_app/base/Reusable_Widget/widgets/big_circle.dart';
import 'package:ticket_app/base/Reusable_Widget/widgets/big_dot.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return SizedBox(
      width: size.width*0.85,
      height: 220,
      child: Container(
        margin: const EdgeInsets.only(right: 16),

        child: Column(
          children: [
            // blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
            
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21)),
              ),
            
              child: Column(
                children: [
                  // show depature and destination with plane icon
                  Row(
                    children: [
                      const TextStyleThird(text: "NYC",),
                      
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(child: Stack(children: [
                        const SizedBox(
            
                          height: 24,
                          child: AppLayoutBuilder(randomDivider: 6,)
            
                        ),
            
                        Center(child: Transform.rotate(
                          angle: 1.5,
                          child: const Icon(Icons.local_airport_rounded, color: Colors.white,)),)
            
                      ],)),
            
                      const BigDot(),
                      Expanded(child: Container()),
                      Text(
                        "LDN", style: HeadlineStyles.headlineStyle2.copyWith(color: Colors.white,
                      )),
                    ],
                  ),
                  const SizedBox(height: 3,),
                  // Show departure and destination with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New York", style: HeadlineStyles.headlineStyle4.copyWith(color: Colors.white,
                        )),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H 30M", style: HeadlineStyles.headlineStyle4.copyWith(color: Colors.white,
                      )),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.end,
                          "London", style: HeadlineStyles.headlineStyle4.copyWith(color: Colors.white,
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // circles and dots
            Container(

              color: AppStyles.ticketOrange,

              child: Row(
                children: [
                  const BigCircle(isRight: false,),
                  Expanded(child: Container()),
                  const BigCircle(isRight: true,),
                ],),

            ),
            // orange part of the ticketc
            Container(
              padding: const EdgeInsets.all(16),
            
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(bottomRight: Radius.circular(21), bottomLeft: Radius.circular(21)),
              ),
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  // show depature and destination with plane icon
                  Row(
                    children: [
                      Text(
                        "1 MAY", style: HeadlineStyles.headlineStyle2.copyWith(color: Colors.white,
                      )),
                      Expanded(child: Container()),
                      Text(
                        "08:00 AM", style: HeadlineStyles.headlineStyle2.copyWith(color: Colors.white,
                      )),
                      Expanded(child: Container()),
                      Text(
                        "23", style: HeadlineStyles.headlineStyle2.copyWith(color: Colors.white,
                      )),
                    ],
                  ),
                  const SizedBox(height: 3,),
                  // Show departure and destination with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "Date", style: HeadlineStyles.headlineStyle4.copyWith(color: Colors.white,
                        )),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Depature time", style: HeadlineStyles.headlineStyle4.copyWith(color: Colors.white,
                      )),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.end,
                          "Number", style: HeadlineStyles.headlineStyle4.copyWith(color: Colors.white,
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}