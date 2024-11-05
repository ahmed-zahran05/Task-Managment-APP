import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:taskmanagmentgit/Core/utills/AppStyles.dart';
import 'package:taskmanagmentgit/database_manager/todo-DM.dart';


class TaskItem extends StatelessWidget {
  TaskItem({super.key, required this.todoo});
  TodoDm todoo;

  @override
  Widget build(BuildContext context) {
    return Container(
  color: Colors.white,
//   color: colorsManager.blackAccent ,
       margin: EdgeInsets.all(8),
      child: Slidable(
        startActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(15),
              onPressed: (context) {},
              backgroundColor: Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
          ],
        ),
        endActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(15),
              onPressed: (context) {},
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
              icon: Icons.edit,
              label: 'Edit',
            ),
          ],
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 65,
                  width: 4,
                  color: Theme.of(context).dividerColor,
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Text(
                        todoo.title,
                        style: CommonAppStyles.TaskTitleText),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                        todoo.description,
                        style: CommonAppStyles.TaskTitleText),
                    Row(
                      children: [
                        const Icon(Icons.watch_later , size: 14, 
                       // color: Colors.white,
                        color: Colors.black,
                        ),
                        Text(
                          "10:30 Am",
                        style: lightAppStyles.lightbottomSheetTitleStyle?.copyWith(fontSize: 12 ,  fontWeight: FontWeight.w400),
                        //  style: darkAppStyles.darkbottomSheetTitleStyle?.copyWith(fontSize: 12 ,  fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  width: 70,
                  height: 40,
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 25,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
