import 'package:flutter/material.dart';
import 'package:scribd_clone/utils/color_constants.dart';
import 'package:scribd_clone/view/saved_screen/history_tab/history_tab.dart';
import 'package:scribd_clone/view/saved_screen/list_tab/list_tab.dart';
import 'package:scribd_clone/view/saved_screen/notebook_tab/notebook_tab.dart';
import 'package:scribd_clone/view/saved_screen/title_tab/title_tab.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Saved",
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: ColorConstants.BLACK),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.search_rounded,size: 24),
                  SizedBox(width: 14),
                  Icon(Icons.mode_edit_outlined,size: 24),
                ],
              ),
            ),
          ],
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            dividerColor: Colors.grey,
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: ColorConstants.PRIMARY),
            unselectedLabelColor: ColorConstants.BLACK,
            indicatorColor: ColorConstants.PRIMARY,
            tabs: [
              Tab(text: "Titles",),
              Tab(text: "Lists",),
              Tab(text: "Notebook",),
              Tab(text: "History",),
            ],
            ),
        ),
        body: TabBarView(
          children: [
            TitleTab(),
            ListTab(),
            NotebookTab(),
            HistoryTab(),
          ]
          ),
      ),
    );
  }
}