
import 'package:eticketing/screens/ticket_veiw.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '/utils/app_styles.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body:ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height:20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          "Good morning", style: Styles.headLineStyle3,
                        ),
                        const SizedBox(height:5,),
                        Text(
                          "Book tickets",style: Styles.headLineStyle1,
                        ),

                      ],
                    ),
                    Container(
                        height:50,
                        width:50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image:AssetImage(
                                    "assets/images/img_1.png"
                                )
                            )
                        )
                    )
                  ],
                ),
                const SizedBox(height:25,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFF4F6FD)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color:Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const SizedBox(height:35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Bus Schedule",style: Styles.headLineStyle2,),
                    InkWell(
                        onTap: (){
                          print("You are tapped");
                        },
                        child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height:15,),
          TicketView(),
        ],
      ),
    );
  }
}
