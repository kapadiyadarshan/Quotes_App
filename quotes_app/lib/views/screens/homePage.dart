import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:quotes_app/models/quote_model.dart';
import 'package:quotes_app/utils/colors_utils.dart';
import 'package:quotes_app/utils/quotes_utils.dart';
import 'package:quotes_app/utils/route_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String SelectedCategory = "All";
  Random r = Random();
  List<Quote> randomQuotes = allQuote;
  bool isGrid = false;

  getQuote()
  {
    int index = r.nextInt(allQuoteData.length);
    Future.delayed(const Duration(milliseconds: 500),() {
      showDialog(
        context: context,
        builder: (context) => CupertinoAlertDialog(

          title: const Text("Good Morning"),
          // titleTextStyle: TextStyle(
          //     color: Colors.grey.shade300,
          //     fontWeight: FontWeight.bold,
          //     fontSize: 24
          // ),
          content: Text(allQuote[index].quote),
          // contentTextStyle: TextStyle(
          //     color: MyColor.Theme1,
          //     fontSize: 14
          // ),
          // backgroundColor: Colors.grey.shade500,
          actions: [
            TextButton(
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
    randomQuotes.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        bool willPop = await showDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: const Text("Are you sure to exit?"),
            // titleTextStyle: TextStyle(
            //   color: Colors.grey.shade100,
            //   fontWeight: FontWeight.bold,
            //   fontSize: 24
            // ),
            // icon: Icon(
            //   Icons.add_alert,
            //   size: 64,
            //   color: Colors.grey.shade100,
            // ),
            // backgroundColor: Colors.grey.shade500,
            // actionsAlignment: MainAxisAlignment.center,
            actions: [
              CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text("Yes",
                    style: TextStyle(
                      color: MyColor.Theme1
                    ),)
              ),
              CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: Text("No",
                    style: TextStyle(
                      color: MyColor.Theme1
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
                  setState(() {
                    isGrid = !isGrid;
                  });
                },
                icon: (isGrid) 
                      ? const Icon(CupertinoIcons.list_dash)
                      : const Icon(CupertinoIcons.square_grid_2x2_fill)
            ),
          ],
          backgroundColor: MyColor.Theme1,
          foregroundColor: MyColor.Theme2,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              //Category row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          SelectedCategory = "All";
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.all(4),

                        decoration: BoxDecoration(
                          color: (SelectedCategory == "All") ? MyColor.Theme2 : MyColor.Theme1,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: MyColor.Theme2
                          ),
                        ),
                        child: Text("All",
                          style: TextStyle(
                            color: (SelectedCategory == "All") ? MyColor.Theme1 : MyColor.Theme2,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                    ),
                    ...allCategories
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
                  ).toList()],
                ),
              ),
              Expanded(
                  child: (isGrid)
                      ? SingleChildScrollView(
                        child: StaggeredGrid.count(
                          crossAxisCount: 2,
                          children: List.generate(
                            randomQuotes.length, (index) => SelectedCategory == "All"
                              ? StaggeredGridTile.count(
                                  crossAxisCellCount: 1,
                                  mainAxisCellCount: (index % 2 == 1) ? 1 : 1.5,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Navigator.of(context).pushNamed(MyRoute.DetailPage,arguments: randomQuotes[index]);
                                      });
                                    },
                                    child: Card(
                                      color: MyColor.Theme2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          children: [
                                            const Spacer(),
                                            Text(
                                              randomQuotes[index].quote,
                                              textAlign: TextAlign.center,
                                              maxLines: 5,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: MyColor.Theme1,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            Text("- ${randomQuotes[index].author}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            const Spacer(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                          )
                              : Visibility(
                                visible: SelectedCategory == allQuote[index].category,
                                child: StaggeredGridTile.count(
                                  crossAxisCellCount: 1,
                                  mainAxisCellCount: (index % 2 == 1) ? 1.2 : 1.2,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Navigator.of(context).pushNamed(MyRoute.DetailPage,arguments: allQuote[index]);
                                      });
                                    },
                                    child: Card(
                                      color: MyColor.Theme2,
                                      child: Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          children: [
                                            const Spacer(),
                                            Text(
                                              allQuote[index].quote,
                                              textAlign: TextAlign.center,
                                              maxLines: 5,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: MyColor.Theme1,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            Text("- ${allQuote[index].author}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            const Spacer(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                          )
                          ),
                        ),
                      )
                      : (SelectedCategory == "All")
                            ? ListView(
                              children: List.generate(
                                  randomQuotes.length, (index) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        Navigator.of(context).pushNamed(MyRoute.DetailPage,arguments: randomQuotes[index]);
                                      });
                                    },
                                    child: Card(
                                      color: Colors.grey.shade300,
                                      child: ListTile(
                                        title: Text(
                                          randomQuotes[index].quote,
                                          textAlign: TextAlign.center,
                                        ),
                                        titleTextStyle: TextStyle(
                                          color: MyColor.Theme1,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700
                                        ),
                                        subtitle: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            Text("- ${randomQuotes[index].author}")
                                          ],
                                        ),
                              ),
                                    ),
                                  )
                              ),
                            )
                            : ListView(
                                children: List.generate(
                                    allQuote.length, (index) =>
                                      (allQuote[index].category == SelectedCategory)
                                        ? GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              Navigator.of(context).pushNamed(MyRoute.DetailPage,arguments: allQuote[index]);
                                            });
                                          },
                                          child: Card(
                                              color: Colors.grey.shade300,
                                              child: ListTile(
                                                title: Text(
                                                  allQuote[index].quote,
                                                  textAlign: TextAlign.center,
                                                ),
                                                titleTextStyle: TextStyle(
                                                    color: MyColor.Theme1,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700
                                                ),
                                                subtitle: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                    const SizedBox(
                                                      height: 12,
                                                    ),
                                                    Text("- ${allQuote[index].author}")
                                                  ],
                                                ),
                                              ),
                                            ),
                                        )
                                        : Container()
                                ),
                  )
                  )
            ],
          ),
        ),
        backgroundColor: MyColor.Theme1,
      ),
    );
  }
}
