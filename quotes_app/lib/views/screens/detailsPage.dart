import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes_app/models/quote_model.dart';
import 'package:quotes_app/utils/colors_utils.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  
  List<Color> ColorsList = [MyColor.Theme1,Colors.white,...Colors.primaries];
  Color fontColor = MyColor.Theme1;
  
  String bgImage = "https://e0.pxfuel.com/wallpapers/156/840/desktop-wallpaper-pure-simple-art-blank-colors-ipad.jpg";

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
    GoogleFonts.abel()
  ];
  
  @override
  Widget build(BuildContext context) {

    Quote quote = ModalRoute.of(context)!.settings.arguments as Quote;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote Details"),
        centerTitle: true,
        backgroundColor: MyColor.Theme1,
        foregroundColor: MyColor.Theme2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              height: 360,
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              
              decoration: BoxDecoration(
                color: MyColor.Theme2,
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: NetworkImage(bgImage),
                    fit: BoxFit.cover
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 5,
                    offset: Offset(5, 5),
                  )
                ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    quote.quote,
                    textAlign: TextAlign.center,
                    style: text.merge(
                      TextStyle(
                        fontSize: 28,
                        color: fontColor
                      )
                    )
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "-${quote.author}",
                        textAlign: TextAlign.center,
                        style: text.merge(
                          TextStyle(
                            color: fontColor
                          )
                        )
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  n++;
                  fontColor = ColorsList[n % (ColorsList.length-1)];
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
                      offset: Offset(2, 2)
                    )
                  ]
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
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
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
                          offset: Offset(2, 2)
                      )
                    ]
                ),
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
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
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
                          offset: Offset(2, 2)
                      )
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Aa",
                      style: text.merge(
                        const TextStyle(
                          fontSize: 20
                        )
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Change Font Family",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      ),
                    )
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
