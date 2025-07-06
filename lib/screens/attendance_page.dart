import 'package:bonum_edesign_task/screens/attendance.dart';
import 'package:flutter/material.dart';

import 'dispact_details_page.dart';

void main() {
  runApp(
    MaterialApp(home: AttendanceScreen(), debugShowCheckedModeBanner: false),
  );
}

class AttendanceScreen extends StatefulWidget {
  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  int _selectedIndex = 0;
  List<Widget> pages = [Attendance(), DispactDetailsPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // dark purple background
      body: SingleChildScrollView(
        child: Column(children: [pages[_selectedIndex]]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fingerprint),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: 'Dispatch',
          ),
        ],
      ),
    );
  }
}
