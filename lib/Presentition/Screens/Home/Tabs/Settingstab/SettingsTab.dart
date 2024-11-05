import 'package:flutter/material.dart';
import 'package:taskmanagmentgit/Core/utills/AppStyles.dart';
import 'package:taskmanagmentgit/Core/utills/ColorsManager.dart';

class SettingsTab extends StatefulWidget {
  SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  String? SelectedTheme = 'Light';

  String? SelectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theme",
              style: CommonAppStyles.SettingItemTextStyle
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
            color: Colors.white,
             // color: colorsManager.blackAccent,
              border: Border.all(
                color: Theme.of(context).dividerColor,
                width: 2,
              ),
            ),
            child: Row(
              children: [
                Text(
                  SelectedTheme!,
                  style: CommonAppStyles.ItemView,
                ),
                const Spacer(),
                DropdownButton<String>(
                  elevation: 0,
                  items: <String>['Light', 'Dark '].map((String value) {
                    SelectedTheme = value;
                    return DropdownMenuItem<String>(
                      value: SelectedTheme,
                      child: Text(SelectedTheme! ,
                        //  style: lightAppStyles.lightdropDownItems,
                        style: darkAppStyles.darkdropDownItems ,
                      ),
                    );
                  }).toList(),
                  onChanged: (NewTheme) {
                    SelectedTheme = NewTheme;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text("Language",  style: CommonAppStyles.SettingItemTextStyle),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            width: double.infinity,
            height: 48,
            decoration: BoxDecoration(
                  /*light*/     color: Colors.white,
        //   color: colorsManager.blackAccent,
              border: Border.all(
                color: Theme.of(context).dividerColor,
                width: 2,
              ),
            ),
            child: Row(
              children: [
                Text(
                  SelectedLanguage!,
              style: CommonAppStyles.ItemView,
                ),
              const Spacer(),
                DropdownButton<String>(
                  elevation: 0,
                  items: <String>['English', 'Arabic '].map((String value) {
                    SelectedLanguage = value;
                    return DropdownMenuItem<String>(
                      value: SelectedLanguage,
                      child: Text(SelectedLanguage! ,
                          style: lightAppStyles.lightdropDownItems,
                        //style: darkAppStyles.darkdropDownItems ,
                      ),
                    );
                  }).toList(),
                  onChanged: (NewTheme) {
                    SelectedLanguage = NewTheme;
                    setState(() {});
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
