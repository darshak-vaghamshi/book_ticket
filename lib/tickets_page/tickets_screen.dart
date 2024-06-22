import 'package:book_tickets/home_page/ticket_view.dart';
import 'package:book_tickets/utills/app_info_test.dart';
import 'package:book_tickets/utills/app_layout.dart';
import 'package:book_tickets/utills/colors.dart';
import 'package:book_tickets/widgets/app_ticket_tab.dart';
import 'package:book_tickets/widgets/colume_layout.dart';
import 'package:book_tickets/widgets/layout_builder_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(17),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headlineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTab(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                color: Colors.white,
                margin: EdgeInsets.only(
                  right: AppLayout.getHeight(17),
                  left: AppLayout.getHeight(32),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumeLayout(
                          firstText: "Flutter DB",
                          secondText: "Passender",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumeLayout(
                          firstText: "52221 364869",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LayoutBuilderWiget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumeLayout(
                          firstText: "0055 444 77147",
                          secondText: "Number of E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumeLayout(
                          firstText: "B25028",
                          secondText: "Booking cade",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const LayoutBuilderWiget(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/Visa.png',
                                  scale: 7,
                                ),
                                Text(
                                  " *** 2462",
                                  style: Styles.headlineStyle3,
                                )
                              ],
                            ),
                            const Gap(5),
                            Text(
                              "Payment method",
                              style: Styles.headlineStyle4,
                            )
                          ],
                        ),
                        const AppColumeLayout(
                          firstText: "\$249.99",
                          secondText: "Price",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),
                margin: EdgeInsets.only(
                  right: AppLayout.getHeight(17),
                  left: AppLayout.getHeight(32),
                ),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(20),
                    bottom: AppLayout.getHeight(20)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(33),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(19),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
