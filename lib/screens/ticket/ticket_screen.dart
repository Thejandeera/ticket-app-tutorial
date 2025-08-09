import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/res/widgets/ticket_view.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_positioned_circle.dart';

import '../../base/res/widgets/app_column_text_layout.dart';
import '../search/widgets/app_ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              SizedBox(height: 40),
              Text("Tickets", style: AppStyles.headlineStyle1),
              const SizedBox(height: 20),
              AppTicketTabs(firstTab: "Upcoming", secondTab: "previous"),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              SizedBox(height: 1),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "Flutter DB",
                          bottomText: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "5221 36869",
                          bottomText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutbuilderWidget(
                      randomDevidor: 15,
                      width: 5,
                      isColor: false,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          topText: "2665 5661221",
                          bottomText: "Number of E-Ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          topText: "53311 869",
                          bottomText: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppLayoutbuilderWidget(
                      randomDevidor: 15,
                      width: 5,
                      isColor: false,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(AppMedia.visaCard, scale: 11),
                                Text(
                                  " *** 2462",
                                  style: AppStyles.headlineStyle3,
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Payment Method",
                              style: AppStyles.headlineStyle4,
                            ),
                          ],
                        ),
                        AppColumnTextLayout(
                          topText: "\$299.99",
                          bottomText: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsetsGeometry.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: 'https://thejandeerasandeepana.netlify.app/',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
          TicketPositionedCircle(pos: true,),
          TicketPositionedCircle(pos: null,),
        ],
      ),
    );
  }
}
