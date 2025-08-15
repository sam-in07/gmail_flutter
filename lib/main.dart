import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Gmailappabr (),
    );
  }
}


class Gmailappabr extends StatelessWidget {
  const Gmailappabr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                /// Leading icons and label
                Row(
                  children: const [
                    Icon(Icons.menu),
                    SizedBox(width: 10),
                    Text("Gmail"),
                    SizedBox(width: 10),
                    Icon(Icons.email),
                  ],
                ),

                const Spacer(),

                /// Search bar
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: 'Search mail',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 20),

                /// Action icons
                Row(
                  children: const [
                    Icon(Icons.support),
                    SizedBox(width: 10),
                    Icon(Icons.settings),
                    SizedBox(width: 10),
                    Icon(Icons.apps),
                    SizedBox(width: 10),
                    Icon(Icons.account_box),
                  ],
                ),

                const SizedBox(width: 20),

                /// Image container
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://tse2.mm.bing.net/th/id/OIP.jRda-0U5AbnZeS1-UCA7awHaE8?rs=1&pid=ImgDetMain&o=7&rm=3",
                      ),
                      filterQuality: FilterQuality.high,
                      fit: BoxFit.cover,

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
