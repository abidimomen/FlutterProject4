import 'package:flutter/material.dart';
import 'package:workshop_sim4/new_home.dart';
import 'package:workshop_sim4/signup.dart';
import 'package:workshop_sim4/forgpass.dart';

class Paramprofile extends StatefulWidget {
  //var

  //Const
  const Paramprofile({Key? key}) : super(key: key);

  @override
  State<Paramprofile> createState() => ParamprofileState();
}

class ParamprofileState extends State<Paramprofile> {
//var
  late String? CurrentPassword;

  late String? NewPassword;
  late String? Adresse;

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
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
                  obscureText: true,

                  onSaved: (value) {
                    CurrentPassword = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty ) {
                      return 'le mot de passe courant ne doit pas etre vide';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Le mot de passe actuel"),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: TextFormField(
                  obscureText: true,
                  onSaved: (value) {
                    NewPassword = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Mot de passe est invalid';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nouveau mot de passe "),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: TextFormField(
                  maxLines: 4,
                  onSaved: (value) {
                    Adresse = value;
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Adresse de facturation est invalid';
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Adresse de facturation"),
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
                          'Current password= $CurrentPassword  \nNew password = $NewPassword  \nAdresse = $Adresse';
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Information'),
                            content: Text(message),
                            actions: [
                              TextButton(
                                  onPressed: () {}, child: Text('Got it'))
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text("Enregistrer"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
