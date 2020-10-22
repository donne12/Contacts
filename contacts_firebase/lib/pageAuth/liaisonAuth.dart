import 'package:flutter/material.dart';
import 'package:contacts_firebase/pageAuth/connexion.dart';
import 'package:contacts_firebase/pageAuth/inscription.dart';

class LiaisonPageAuth extends StatefulWidget {
  @override
  _LiaisonPageAuthState createState() => _LiaisonPageAuthState();
}

class _LiaisonPageAuthState extends State<LiaisonPageAuth> {

  bool affichePageConnexion = true;

  void basculation(){
    setState(() => affichePageConnexion = !affichePageConnexion);
  }
  @override
  Widget build(BuildContext context) {

    if(affichePageConnexion){
      return Connexion(basculation: basculation);
    }else{
      return Inscription(basculation: basculation);
    }
  }
}
