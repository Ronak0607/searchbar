import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:searchbar/Screen/controller/homeController.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Obx(
              () => TextField(
                decoration: InputDecoration(
                  hintText: 'Search',enabledBorder: OutlineInputBorder()
                ),
                controller:
                    TextEditingController(text: homeController.clickData.value),
                onChanged: (value) {
                  homeController.filterListData(value);
                },
              ),
            ),
            Expanded(
              child: Obx(
                () => ListView.builder(
                    itemCount: homeController.data.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          homeController.clickData.value =
                              homeController.data[index];
                        },
                        child: ListTile(title: Text("${homeController.data[index]}"),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
