import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagmentgit/Core/Reusable_components/Task_Item.dart';
import 'package:taskmanagmentgit/Core/utills/ColorsManager.dart';
import 'package:taskmanagmentgit/Core/utills/Date.dart';
import 'package:taskmanagmentgit/database_manager/todo-DM.dart';



class TasksTab extends StatefulWidget {
   TasksTab({super.key});

  @override
  State<TasksTab> createState() => _TasksTabState();
}

class _TasksTabState extends State<TasksTab> {
   DateTime selecteDate = DateTime.now();

   List<TodoDm> todosList =[];

  @override
  Widget build(BuildContext context) {
    readTodosFromFireStore();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 30,
          child: Stack(
            children: [
              Container(
                height: 200,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: colorsManager.bluecolor,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: colorsManager.lightScaffoldBgColor,
                      ),
                    ),
                  ],
                ),
              ),
              EasyInfiniteDateTimeLine(
                firstDate: DateTime.now().subtract( Duration(days: 365) ),
                focusDate: DateTime.now(),
                lastDate: DateTime.now().add( Duration(days: 365) ),
                onDateChange: (selectedDate) {
                },
                itemBuilder: (context, date, isSelected, onTap) {
                  return buildCalenderItem(date , isSelected);
                },
              ),
            ],
          ),
        ),

        Expanded(
          flex: 70,
          child: ListView.builder(
            itemBuilder:  (context, index) => TaskItem(todoo: todosList[index],),
            itemCount: todosList.length,  ),
        )

      ],
    );
  }

  readTodosFromFireStore()async{
    CollectionReference todoCollection = FirebaseFirestore.instance.collection(TodoDm.collectionName);
    QuerySnapshot querySnapshot = await todoCollection.get();
    List<QueryDocumentSnapshot> docs = querySnapshot.docs;
    
    todosList = docs.map((docSnapShot) {
      Map<String,dynamic> json = docSnapShot.data() as Map<String,dynamic>;
      TodoDm todo = TodoDm.fromJson(json);
      return todo ;
    },).toList();
    setState(() {
      
    });
    
  }

 Widget buildCalenderItem(DateTime date , bool isSelected ){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(date.getDay , style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: isSelected? colorsManager.bluecolor : colorsManager.black ),),
             SizedBox(height: 4,),
             Text("${date.day}" ,  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: isSelected? colorsManager.bluecolor : colorsManager.black )  ),
           ],
        ),
    );
  }
}
