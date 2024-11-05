import 'package:flutter/material.dart';
import 'package:taskmanagmentgit/Presentition/Screens/Home/AddTaskBottomSheet/AddTaskBottomSheet.dart';
import 'Tabs/Settingstab/SettingsTab.dart';
import 'Tabs/TasksTab/TasksTab.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 0;
  String AppTitleText  = 'To Do List' ;
  List<Widget> tabs = [
    TasksTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title:  Text(AppTitleText),
      ),
      floatingActionButton: BuildFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BuildBottomNavBar(),
      body: tabs[SelectedIndex],
    );
  }

 Widget BuildFab()=> FloatingActionButton(
   onPressed: () {
    AddTaskBottomSheet.Show(context);
   },
   child: const Icon(Icons.add),
 );
 Widget BuildBottomNavBar()=> BottomAppBar(
   notchMargin: 8,
   child: BottomNavigationBar(
     onTap: (index) {
       if(index == 0 ){
         AppTitleText = 'To Do List';
       }
       else{
         AppTitleText = "Settings" ;
       }
       SelectedIndex = index;
       setState(() {});
     },
     currentIndex: SelectedIndex,
     items: const [
       BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Tasks'),
       BottomNavigationBarItem(
           icon: Icon(Icons.settings), label: 'Settings'),
     ],
   ),
 );
}
