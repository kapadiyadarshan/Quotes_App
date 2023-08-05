import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes_app/models/quote_model.dart';
import 'package:quotes_app/utils/colors_utils.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<Color> ColorsList = [MyColor.Theme1, Colors.white, ...Colors.primaries];
  Color fontColor = MyColor.Theme1;

  // create some values
  Color pickerColor = Color(0xff443a49);

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  String bgImage =
      "https://e0.pxfuel.com/wallpapers/156/840/desktop-wallpaper-pure-simple-art-blank-colors-ipad.jpg";

  int fontSize = 24;
  bool fontBold = false;
  bool fontItalic = false;

  TextStyle text = GoogleFonts.abel();

  int n = 0; // fontcolor
  int m = 0; // bgColor
  int o = 0; // fontFamily

  List bgImageList = [
    "https://images.unsplash.com/photo-1612178537253-bccd437b730e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8Ymxhbmt8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
    "https://e0.pxfuel.com/wallpapers/156/840/desktop-wallpaper-pure-simple-art-blank-colors-ipad.jpg",
    "https://c0.wallpaperflare.com/preview/300/256/907/background-blank-blue-color-thumbnail.jpg",
    "https://i.pinimg.com/736x/92/31/2a/92312a7d7a8594871adf397aa34b0e3c--backgrounds-wallpapers-texture.jpg",
    "https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77700366184.jpg",
    "https://wallpaper.dog/large/817497.jpg",
    "https://img.freepik.com/free-photo/orange-background_23-2147674307.jpg?q=10&h=200",
    "https://c4.wallpaperflare.com/wallpaper/533/463/577/abstract-texture-simple-simple-background-wallpaper-preview.jpg"
  ];

  List<TextStyle> FontFamily = [
    GoogleFonts.pacifico(),
    GoogleFonts.poppins(),
    GoogleFonts.merriweather(),
    GoogleFonts.kanit(),
    GoogleFonts.hindSiliguri(),
    GoogleFonts.lobster(),
    GoogleFonts.abel(),
  ];

  GlobalKey key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Quote quote = ModalRoute.of(context)!.settings.arguments as Quote;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote Details"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                fontSize = 24;
                fontBold = false;
                fontItalic = false;
                fontColor = MyColor.Theme1;
                bgImage =
                    "https://e0.pxfuel.com/wallpapers/156/840/desktop-wallpaper-pure-simple-art-blank-colors-ipad.jpg";
                text = GoogleFonts.abel();
              });
            },
            icon: const Icon(CupertinoIcons.restart),
          ),
        ],
        foregroundColor: MyColor.Theme1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            RepaintBoundary(
              key: key,
              child: Container(
                height: 360,
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: MyColor.Theme2,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: NetworkImage(bgImage), fit: BoxFit.cover),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: 5,
                        offset: Offset(5, 5),
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    SelectableText(
                      quote.quote,
                      textAlign: TextAlign.center,
                      style: text.merge(
                        TextStyle(
                            fontSize: fontSize.toDouble(),
                            fontWeight: (fontBold) ? FontWeight.bold : null,
                            fontStyle: (fontItalic)
                                ? FontStyle.italic
                                : FontStyle.normal,
                            color: fontColor),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "-${quote.author}",
                          textAlign: TextAlign.center,
                          style: text.merge(
                            TextStyle(color: fontColor),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Bold
                IconButton(
                  onPressed: () {
                    setState(() {
                      fontBold = !fontBold;
                    });
                  },
                  icon: const Icon(Icons.format_bold),
                  style: IconButton.styleFrom(
                    backgroundColor: MyColor.Theme2,
                    foregroundColor: MyColor.Theme1,
                  ),
                ),
                //Italic
                IconButton(
                  onPressed: () {
                    setState(() {
                      fontItalic = !fontItalic;
                    });
                  },
                  icon: const Icon(Icons.format_italic),
                  style: IconButton.styleFrom(
                    backgroundColor: MyColor.Theme2,
                    foregroundColor: MyColor.Theme1,
                  ),
                ),
                //Copy
                IconButton(
                  onPressed: () async {
                    Clipboard.setData(
                      ClipboardData(
                          text:
                              "${quote.quote}\n-${quote.author}\n\n\nI've got this exciting quote from : Quotes App"),
                    ).then(
                      (value) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text("Quote Copied..."),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.green.shade300,
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.copy),
                  style: IconButton.styleFrom(
                    backgroundColor: MyColor.Theme2,
                    foregroundColor: MyColor.Theme1,
                  ),
                ),
                //Save Gallary
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.download),
                  style: IconButton.styleFrom(
                    backgroundColor: MyColor.Theme2,
                    foregroundColor: MyColor.Theme1,
                  ),
                ),
                //share
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.share),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColor.Theme2,
                    foregroundColor: MyColor.Theme1,
                  ),
                ),
              ],
            ),
            const Spacer(),
            //Font Size
            Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: MyColor.Theme2,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Font Size",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            (fontSize == 10) ? null : fontSize--;
                          });
                        },
                        icon: const Icon(
                          CupertinoIcons.minus_circle_fill,
                          size: 36,
                        ),
                      ),
                      Text(
                        "${fontSize}",
                        style: TextStyle(
                          color: MyColor.Theme1,
                          fontSize: 36,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            (fontSize == 36) ? null : fontSize++;
                          });
                        },
                        icon: const Icon(
                          CupertinoIcons.add_circled_solid,
                          size: 36,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            //Change font colour
            GestureDetector(
              onTap: () {
                setState(() {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text("Pick a Color"),
                            content: SingleChildScrollView(
                              child: ColorPicker(
                                pickerColor: pickerColor,
                                onColorChanged: changeColor,
                              ),
                            ),
                            backgroundColor: MyColor.Theme2,
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    fontColor = pickerColor;
                                    Navigator.of(context).pop();
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: MyColor.Theme2,
                                  foregroundColor: MyColor.Theme1,
                                ),
                                child: const Text("Got it"),
                              ),
                            ],
                          ));
                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: MyColor.Theme2,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 8,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: fontColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Change Font Colour",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            //Change Background
            GestureDetector(
              onTap: () {
                setState(() {
                  m++;
                  bgImage = bgImageList[m % (bgImageList.length)];
                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: MyColor.Theme2,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(2, 2))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(bgImage),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Change Background",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            //Change font family
            GestureDetector(
              onTap: () {
                setState(() {
                  o++;
                  text = FontFamily[o % (FontFamily.length)];
                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: MyColor.Theme2,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(2, 2))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Aa",
                      style: text.merge(const TextStyle(fontSize: 20)),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Change Font Family",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // backgroundColor: MyColor.Theme1,
    );
  }
}
