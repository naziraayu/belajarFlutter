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
      title: 'Rata - Rata nilai',
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
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController ipaController = TextEditingController();
  TextEditingController mtkController = TextEditingController();
  TextEditingController bingController = TextEditingController();
  TextEditingController ipaBobotController = TextEditingController();
  TextEditingController mtkBobotController = TextEditingController();
  TextEditingController bingBobotController = TextEditingController();

  double ipa = 0.0;
  double mtk = 0.0;
  double bing = 0.0;
  double ipaBobot = 0.0;
  double mtkBobot = 0.0;
  double bingBobot = 0.0;
  double average = 0.0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // void tampilData() {
  //   String username = usernameController.text;
  //   print("button klik $Username")
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Rata - Rata Nilai'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: ipaController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nilai Ipa',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: ipaBobotController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Bobot Ipa',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: mtkController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nilai mtk',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: mtkBobotController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Bobot Mtk',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              // obscureText: ,
              controller: bingController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nilai Bing',
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              controller: bingBobotController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Bobot Bing',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ipa = double.parse(ipaController.text);
                  mtk = double.parse(mtkController.text);
                  bing = double.parse(bingController.text);
                  ipaBobot = double.parse(ipaBobotController.text);
                  mtkBobot = double.parse(mtkBobotController.text);
                  bingBobot = double.parse(bingBobotController.text);

                  average = ((ipa * ipaBobot) +
                          (mtk * bingBobot) +
                          (bing * bingBobot)) /
                      (ipaBobot + mtkBobot + bingBobot);
                });
              },
              child: const Text('Hitung Rata-rata'),
            ),
            const SizedBox(height: 20.0),
            Text(
              'Rata-rata Nilai: $average',
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
