import 'package:flutter/cupertino.dart';

class CurrencyConverterCupetionoPage extends StatefulWidget {
  const CurrencyConverterCupetionoPage({super.key});

  @override
  State<CurrencyConverterCupetionoPage> createState() =>
   _CurrencyConverterCupetionoPageState();
}

class _CurrencyConverterCupetionoPageState
 extends State<CurrencyConverterCupetionoPage> {
   double result=0;
     final TextEditingController textEditingController=TextEditingController();  
     void convert(){
      setState(() {
                result=double.parse(textEditingController.text) *80;
               });
     }
  @override
  Widget build(BuildContext context){

   return  CupertinoPageScaffold(
          backgroundColor: CupertinoColors.systemGrey3,
          navigationBar: const CupertinoNavigationBar(
            backgroundColor: CupertinoColors.systemGrey3,
            middle:  Text("Currency Converter",
            style: TextStyle(
              color: CupertinoColors.black,
            ),
            ),
            
          ),
          child:Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //int --> String integervalue.toString()
            //string --> int int.parse(stringvalue)
             Text(
             '₹ ${result!=0 ?result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
              style:const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
             ),
             //padding 
             //container

             Container(
               padding: const EdgeInsets.all(10),
               child:CupertinoTextField(
               controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration:BoxDecoration(border: Border.all(),
                color: CupertinoColors.white,
                borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                 keyboardType:const TextInputType.numberWithOptions(
                  decimal: true,
               
                 ),
                 
               ),
             ),
             //button
             //1.raised
             //2.appears like a text
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: CupertinoButton(
                onPressed: (){
                //debug-> testing our application building new features
                // release->how application looklike in production
                // profile->mixture of both
                //setstae ke lagane se humara digit convert hua ;
               convert();
               },
               color: CupertinoColors.black,
                 child: const Text("Convert"),
               ),
           ),
          ],
        ), 
      ),
    );
      
  }

} 