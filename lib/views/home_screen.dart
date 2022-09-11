import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var size1 = size.height / 100;
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: SizedBox(),
          ),
          const Positioned(
            top: 0,
            left: 0,
            child: SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,),
            child: Column(
              children: [
                SizedBox(height: size1 * 10,),
                Row(
                  children: const [
                    Text('Welcome', style: TextStyle(fontSize: 40),),
                    Expanded(child: SizedBox(),),
                  ],
                ),
                Row(
                  children: const [
                    Text('Back', style: TextStyle(fontSize: 40),),
                    Expanded(child: SizedBox(),),
                  ],
                ),
                SizedBox(height: size1 * 10,),
                const TextField(
                  //obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your Email',
                  ),
                ),
                SizedBox(height: size1 * 2,),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: size1 * 4,),
                Row(
                  children: [
                    InkWell(
                      onTap: () { print('Sign in Pressed'); },
                      child: Text('Sign in', style: const TextStyle(fontSize: 30),),
                    ),
                    const Expanded(child: SizedBox(),),
                    ElevatedButton(
                      onPressed: () { print('Next Pressed'); },
                      child: Text('Next'),
                    ),
                  ],
                ),
                SizedBox(height: size1 * 10,),
                Row(
                  children: [
                    InkWell(
                      onTap: () { print('Sign Up Pressed'); },
                      child: const Text('Sign Up',),
                    ),
                    const Expanded(child: SizedBox(),),
                    InkWell(
                      onTap: () { print('Forgot Passwords Pressed'); },
                      child: const Text('Forgot Passwords',),
                    ),
                  ],
                ),
                SizedBox(height: size1 * 7,),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text('Red', style: TextStyle(color: Colors.red.withOpacity(1),),),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text('Green', style: TextStyle(color: Colors.green.withOpacity(1),),),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text('Blue', style: TextStyle(color: Colors.blue.withOpacity(1),),),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
