import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Root widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: Center(
          child: Builder(
            builder: (context) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterLogo(
                          size: 80,
                        ),
                        Text(
                          'Flutter',
                          style: TextStyle(fontSize: 36),
                        ),
                      ],
                    ),

                    // Input Email
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 21, horizontal: 12)),
                      ),
                    ),

                    // Input Password
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 21, horizontal: 12)),
                      ),
                    ),

                    // Forgot password text button
                    forgotButton(),
                    // Login button
                    loginButton(),
                    Container(
                        margin: EdgeInsets.all(20),
                        child: Text('New User? Create Account'))
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget forgotButton() {
  return Container(
    padding: const EdgeInsets.only(bottom: 10),
    child: TextButton(
        style: ButtonStyle(
            foregroundColor: WidgetStateProperty.all<Color>(Colors.blue)),
        onPressed: () {},
        child: const Text('Forgot Password')),
  );
}

Widget loginButton() {
  return SizedBox(
    height: 45,
    width: 240,
    child: ElevatedButton(
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
          foregroundColor: WidgetStatePropertyAll(Colors.white)),
      onPressed: () {
        print('Clicked!');
      },
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), .
    );
  }
}