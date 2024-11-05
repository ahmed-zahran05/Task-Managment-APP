import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:taskmanagmentgit/Core/utills/AppStyles.dart';
import 'package:taskmanagmentgit/database_manager/todo-DM.dart';
import '../../../../Core/utills/Date.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();

  static void Show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: AddTaskBottomSheet(),
      ),
    );
  }
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  DateTime userSelectedDate = DateTime.now();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add New Task",
                textAlign: TextAlign.center,
                style: lightAppStyles.lightbottomSheetTitleStyle),
          //   style: darkAppStyles.darkbottomSheetTitleStyle),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              validator: (input) {
                if(input==null || input.trim()==null){
                  return "Please Enter Title";
                }
                return null;
              },
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Enter Task title",
               hintStyle: lightAppStyles.lightgreyText,
                //   hintStyle: darkAppStyles.darkWhitetext,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              validator: (input) {
                if(input==null || input.trim()==null){
                  return "Please Enter description";
                }
                return null ;
              },
              controller: descriptionController,
              decoration: InputDecoration(
                  hintText: "Enter Task Description",
                   hintStyle: lightAppStyles.lightgreyText,
                //hintStyle: darkAppStyles.darkWhitetext
                 ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "Select Data",
              textAlign: TextAlign.center,
              style: lightAppStyles.lightgreyText,
              // style: darkAppStyles.darkWhitetext,
            ),
            const SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () {
                ShowTaskDatePicker();
              },
              child: Text(
                 userSelectedDate.dataFormatted,
                textAlign: TextAlign.center,
              style: lightAppStyles.lightgreyText,
                //  style: darkAppStyles.darkWhitetext,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                addTodoToFireStore();
              },
              child: const Text("Add Task"),
            ),
          ],
        ),
      ),
    );
  }
  void ShowTaskDatePicker() async {
    userSelectedDate = await showDatePicker(
      context: context,
      confirmText: "Done",
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        Duration(days: 365),
      ),
    ) ?? userSelectedDate;
    setState(() {

    });
  }

  void addTodoToFireStore() {
    if(formKey.currentState?.validate() == false) return;
    CollectionReference todoCollection = FirebaseFirestore.instance.collection(TodoDm.collectionName);
    DocumentReference doc = todoCollection.doc();
    TodoDm todo = TodoDm(id: doc.id, title: titleController.text, description: descriptionController.text, date: Timestamp.fromMicrosecondsSinceEpoch(userSelectedDate.millisecond), isDone: false);
    doc.set(
          todo.toJson()
    )
        .then((_) {},).onError((error, stackTrace) {},).
    timeout(Duration(milliseconds:500),onTimeout: () {
      if(mounted){
        Navigator.pop(context);
      }
    },);
  }
}
