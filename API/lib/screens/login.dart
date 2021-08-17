import 'package:flutter/material.dart';
import 'file:///D:/Flutter_Projects/task_1/lib/screens/counter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++;
            print('Counter = $counter');
          });
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text('$counter')),
                ),
                SizedBox(height: 20,),
                Container(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/logo.png')),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Password',
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Log In',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlueAccent,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forget Password ? No yawa .',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(),
                        child: Text(
                          'Tab me',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CounterPage(count: counter,)),
                        );
                      },
                      child: const Text(
                        'No Account ? Sign Up',
                        style: TextStyle(color: Colors.black45),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
