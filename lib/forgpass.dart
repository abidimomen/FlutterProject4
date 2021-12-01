import 'package:flutter/material.dart';
import 'package:workshop_sim4/paramprofile.dart';

class Forgpass extends StatefulWidget {
  //var

  //Const
  const Forgpass({Key? key}) : super(key: key);

  @override
  State<Forgpass> createState() => ForgpassState();
}

class ForgpassState extends State<Forgpass> {
//var
  late String? username;

  

  //key
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  //Life cycle
  @override
  void initState() {
    super.initState();
  }

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('G-Store Esprit'),
      ),
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
            Image.asset('assets/images/minecraft.jpg'),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(

                 onSaved: (value) {
                  username = value;
                },
                validator: (value) {
                  if (value!.isEmpty || value.length < 5) {
                    return 'Username ne doit pas etre vide';
                  }
                },   
                
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
                    
              ),
            ),
            
            Container(
              width: 500,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: ElevatedButton(
                onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      _globalKey.currentState!.save();
                      String message =
                          'Username = $username   ';
                     
Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Paramprofile()));
                     
                    }
                    
                    
                  },
                child: const Text("réinitialiser mon mot de passe"),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
