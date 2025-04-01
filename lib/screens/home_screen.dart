import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:cipherx_expense_app/utils/expense_widget.dart';
import 'package:cipherx_expense_app/utils/month_drop_down.dart';
import 'package:cipherx_expense_app/widgets/today_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _key = GlobalKey<ExpandableFabState>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            // height: MediaQuery.of(context).size.height * 0.378,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
              gradient: LinearGradient(
                colors: [
                  Color(0xffF8EDD8),
                  Color(0xffFFF6E5),
                  Color(0xffFFF6E5)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 24.0, left: 24, right: 24, bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: CustomColor.violet100,
                          backgroundImage:
                              AssetImage("assets/images/tanik.png"),
                          radius: 16,
                        ),
                        MonthDropDown(),
                        SvgPicture.asset(
                          "assets/icons/notifiaction.svg",
                          color: CustomColor.violet100,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Account Balance",
                        style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: CustomColor.light,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "₹38000",
                        style: TextStyle(
                            fontFamily: GoogleFonts.inter().fontFamily,
                            color: CustomColor.dark75,
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 24),
                    child: Row(
                      children: [
                        ExpenseWidget(
                          color: Color(
                            0xff00A86B,
                          ),
                          amount: "50000",
                          icon: "assets/icons/income.svg",
                          name: "Income",
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        ExpenseWidget(
                          color: Color(0xffFD3C4A),
                          amount: "12000",
                          icon: "assets/icons/expense.svg",
                          name: "Expenses",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: CustomColor.light80),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TabBar(
                controller: _tabController,
                dividerColor: Colors.transparent,
                // padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                indicator: BoxDecoration(
                    color: CustomColor.yellow20,
                    borderRadius: BorderRadius.circular(16),
                    shape: BoxShape.rectangle),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: CustomColor.yellow100,
                unselectedLabelColor: CustomColor.light,
                labelStyle: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                tabs: [
                  Tab(text: "Today"),
                  Tab(text: "Week"),
                  Tab(text: "Month"),
                  Tab(text: "Year"),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                TodayViewWidget(),
                TodayViewWidget(),
                TodayViewWidget(),
                TodayViewWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        height: 70,
        color: CustomColor.violet20,
        notchMargin: 4.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Icon(Icons.add),
                    Text("Income"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Icon(Icons.remove),
                    Text("Expense"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        backgroundColor: CustomColor.violet100,
        child: Icon(Icons.home, size: 28, color: Colors.white),
      ),
      // floatingActionButton: ExpandableFab(
      //   key: _key,
      //   type: ExpandableFabType.fan,
      //   pos: ExpandableFabPos.center,
      //   fanAngle: 180,
      //   childrenAnimation: ExpandableFabAnimation.rotate,
      //   distance: 70,
      //   overlayStyle: ExpandableFabOverlayStyle(
      //     color: Colors.white.withOpacity(0.8),
      //   ),
      //   children: const [
      //     Column(
      //       children: [
      //         FloatingActionButton.small(
      //           heroTag: null,
      //           onPressed: null,
      //           child: Icon(Icons.remove_circle_outline_outlined),
      //         ),
      //         SizedBox(height: 10),
      //         Text('Expense'),
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         FloatingActionButton.small(
      //           heroTag: null,
      //           onPressed: null,
      //           child: Icon(Icons.add_circle_outline),
      //         ),
      //         SizedBox(height: 10),
      //         Text('Income'),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
