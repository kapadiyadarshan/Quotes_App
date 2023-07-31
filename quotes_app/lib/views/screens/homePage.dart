import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:quotes_app/utils/colors_utils.dart';
import 'package:quotes_app/utils/quotes_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String SelectedCategory = "";
  Random r = Random();

  getQuote()
  {
    int index = r.nextInt(allQuoteData.length);
    Future.delayed(const Duration(milliseconds: 500),() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Good Morning"),
          titleTextStyle: TextStyle(
              color: Colors.grey.shade100,
              fontWeight: FontWeight.bold,
              fontSize: 24
          ),
          content: Text(allQuote[index].quote),
          contentTextStyle: TextStyle(
              color: MyColor.Theme1
          ),
          backgroundColor: Colors.grey.shade500,
          actions: [
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text("Go to App")
            )
          ],
        ),
      );
    },);
  }

  @override
  void initState() {
    super.initState();
    getQuote();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        bool willPop = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Are You Sure to Exit?"),
            titleTextStyle: TextStyle(
              color: Colors.grey.shade100,
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
            icon: Icon(
              Icons.add_alert,
              size: 64,
              color: Colors.grey.shade100,
            ),
            backgroundColor: Colors.grey.shade500,
            actionsAlignment: MainAxisAlignment.center,
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text("Yes",
                    style: TextStyle(
                      color: MyColor.Theme1
                    ),)
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text("No",
                    style: TextStyle(
                      color: MyColor.Theme2
                    ),)
              ),
            ],
          ),
        );
        return willPop;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quotes App"),
          actions: [
            IconButton(
                onPressed: () {

                },
                icon: const Icon(
                  Icons.grid_view_rounded
                ),),
          ],
          backgroundColor: MyColor.Theme1,
          foregroundColor: MyColor.Theme2,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: allCategories
                      .map(
                          (e) => GestureDetector(
                            onTap: () {
                              setState(() {
                                SelectedCategory = e;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.all(4),

                              decoration: BoxDecoration(
                                color: (SelectedCategory == e) ? MyColor.Theme2 : MyColor.Theme1,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: MyColor.Theme2
                                ),
                              ),
                              child: Text(e,
                              style: TextStyle(
                                color: (SelectedCategory == e) ? MyColor.Theme1 : MyColor.Theme2,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                          )
                  ).toList(),
                ),
              ),
              Expanded(
                  child: SingleChildScrollView()
              )
            ],
          ),
        ),
        backgroundColor: MyColor.Theme1,
      ),
    );
  }
}
