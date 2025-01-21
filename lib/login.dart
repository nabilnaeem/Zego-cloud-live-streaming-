import 'package:flutter/material.dart';
import 'package:zegocloud2/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController usernsme=TextEditingController();
    TextEditingController id=TextEditingController();
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: usernsme,
              decoration: InputDecoration(
                hintText: 'user name'
              ),
            ),
            TextFormField(
              controller: id,
              decoration: InputDecoration(
                  hintText: 'user id'
              ),
            ),
            Column(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (c)=>Home(usernsme.text, id.text, false)));

                }, child: Text('watch')),
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (c)=>Home(usernsme.text, id.text, true)));

                }, child: Text('live')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
