import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
   runApp(const MyApp()); 
}
//material app
//cupertino app

//types of widgets
//1.StatelessWidget  ->state cannot change
//2.StatefullWidget  ->state can change
//3.InheritedWidget
// key->Key is a class that helps flutter, identify, and differentiate between widgets.
//By passing a key to the constructor, you explicitly assign a specific key to the specific widget instance.
// 1.Material Design -> created by google
//2. cupertino design-> created by apple
//State:how text  should behave or look like 
//pehle main function banaya phir class banaya aur usko extend koya stateless 
//widget se phir @overide lagaya widget ke liye aur widget me return chahiye hota 
//hai to return lagaya hai phir upar main function myapp call kardiya jab bhi class extend kkarte 
//hai flutter me to key use karte hai
//MaterialApp will set the overall theming and overall navigation stuff for us, but Scaffold will make sure that
//something related to one specific page is done and Scaffold will give us access to headers, footers
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const  MaterialApp(
        home:CurrencyConverterMaterialPage(),);
  }

}
//type stl for stateless widgets
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupetionoPage(),
    );
  }
}