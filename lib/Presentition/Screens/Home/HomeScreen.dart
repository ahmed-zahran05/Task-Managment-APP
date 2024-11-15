import 'package:flutter/material.dart';

import 'AddTaskBottomSheet/AddTaskBottomSheet.dart';
import 'Tabs/Settingstab/SettingsTab.dart';
import 'Tabs/TasksTab/TasksTab.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<TasksTabState> tasksTabKey = GlobalKey();
  int currentIndex = 0;
  List<Widget> tabs = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabs = [
      TasksTab(
        key: tasksTabKey,
      ),
      SettingsTab(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo List'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildFab(),
      bottomNavigationBar: buildBottomNavBar(),
      body: tabs[currentIndex],
    );
  }

  Widget buildBottomNavBar() => ClipRRect(
    clipBehavior: Clip.antiAlias,
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
    ),
    child: BottomAppBar(
      notchMargin: 8,
      child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (tappedIndex) {
            currentIndex = tappedIndex;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Tasks'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'Settings'),
          ]),
    ),
  );

  Widget buildFab() => FloatingActionButton(
    onPressed: () async {
      await AddTaskBottomSheet.show(context); // 2
      // access reading data from firestore
      tasksTabKey.currentState?.getTodosFromFireStore();
    },
    child: Icon(Icons.add),
  );
}