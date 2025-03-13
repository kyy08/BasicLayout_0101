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
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add_box))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Today', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.black)),
            const SizedBox(height: 16),
            const Text(
              '26°C',
              style: TextStyle(fontSize: 80, color: Color.fromARGB(255, 29, 101, 255)),
            ),
            const SizedBox(height: 16),
            const Divider(
              color: Colors.grey,
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            const Text(
              'Sunny',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit, color: Color.fromARGB(255, 242, 59, 145)),
                SizedBox(width: 5),
                Text('5 km/h', style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 242, 59, 145))),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const Text(
                    'Next 7 days',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                   const SizedBox(height: 10),
                   Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                  Text('Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('17.00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('19.00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('21.00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) => WeatherCard()),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text('Developed by: Kyyelzz',
                style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  const WeatherCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.ac_unit, color: Colors.blue),
        const Text('26°C', style: TextStyle(fontSize: 18, color: Colors.blue)),
        const SizedBox(height: 10),
        const Icon(Icons.wind_power, color: Colors.red),
        const Text('10 km/h', style: TextStyle(color: Colors.red)),
        const SizedBox(height: 10),
        const Icon(Icons.umbrella, color: Colors.black),
        const Text('0%', style: TextStyle(color: Colors.black)),
      ],
    );
  }
}