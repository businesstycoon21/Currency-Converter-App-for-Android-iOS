import 'package:flutter/material.dart';
   //1.create a variable that stores the converted value
     //2. Create function that multiplies the value given by the textfile
     //3. Store the variable that we created 
     //4. display the variable
  //setstae paddind ke andar lagane  se currency conversion hua hai .
  // isse humare sare necessarey widgit rebuilt hoke output dete hain
class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() => 
  _CurrencyConverterMaterialPageState();
}
class _CurrencyConverterMaterialPageState 
  extends State<CurrencyConverterMaterialPage>{
  double result=0;
     final TextEditingController textEditingController=TextEditingController();  
     void convert(){
      setState(() {
                result=double.parse(textEditingController.text) *80;
               });
     }
  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }
  @override
   Widget build(BuildContext context){
    final  border =  OutlineInputBorder(
      borderSide: const BorderSide(
      color: Colors.black,
      width: 2.0,
      style:  BorderStyle.solid,
        ), 
      borderRadius: BorderRadius.circular(5)
     );

   return  Scaffold(backgroundColor: Colors.blueGrey,
          appBar:AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text("Currency Converter",
            style: TextStyle(
              color: Colors.black
            ),
            ),
            centerTitle: true,
          ),
          body:Center(
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
               child: TextField(
               controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
               
                  ),
                  prefixIcon:const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: border,
                  enabledBorder: border,
               
                  
                 ),
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
               child: ElevatedButton(
                onPressed: (){
                //debug-> testing our application building new features
                // release->how application looklike in production
                // profile->mixture of both
                //setstae ke lagane se humara digit convert hua ;
               convert();
               },
                style: TextButton.styleFrom(
                    
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: 
                  const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
               ),
                 child: const Text("convert"),
               ),
           ),
          ],
        ), 
      ),
    );
      
  }

} 
