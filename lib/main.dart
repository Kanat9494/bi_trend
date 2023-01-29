import 'package:flutter/material.dart';
import 'package:bi_trend/app_styles.dart';
import 'package:bi_trend/size_config.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      )
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override 
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric
            (horizontal: cPaddingHorizontal),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.
              spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.
              center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.
                  start,
                  mainAxisAlignment: MainAxisAlignment.
                  center,
                  children: [
                    Text('BiTrend', style:
                      cEncodeSansSemibold.copyWith(
                      color: cDarkBrown,
                      fontSize: SizeConfig.
                      blockSizeHorizontal! * 4,
                      ),),
                  ]
                ),
                const Icon(
                  Icons.bluetooth_outlined,
                  color: green40,
                  size: 30.0,
                ),
              ]
            )
          ),

          const SizedBox(height: 24,),

          Row(
            children: [
              Expanded(
                child: TextField(
                  style: cEncodeSansRegular.copyWith(
                    color: cDarkGrey,
                    fontSize: SizeConfig.
                    blockSizeHorizontal! * 3.5,
                  ),
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 13,
                    ),
                    prefix: IconTheme(
                      data: IconThemeData(color: cDarkGrey),
                      child: Icon(Icons.search)
                    ),
                    hintText: 'Введите чтобы найти...',
                    //border: cInputBorder,
                    // errorBorder: cInputBorder,
                    // disabledBorder: cInputBorder,
                    // focusedBorder:  cInputBorder,
                    // hintStyle: cEncodeSansRegular.copyWith(
                    //   color: cDarkGrey,
                    //   fontSize: SizeConfig.
                    //   blockSizeHorizontal! * 3.5,
                    // )
                  ),
                )
              )
            ],
          )
        ]
      )
    );
  }
}

