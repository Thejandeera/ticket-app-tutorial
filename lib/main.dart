import 'package:flutter/material.dart';
import 'package:ticket_app/screens/all_tickets.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import 'base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const BottomNavBar(),
      routes: {
        "all_tickets": (context) => const AllTickets(),
        "ticket_screen": (context) => const TicketScreen(),
      },

    );
  }
}


