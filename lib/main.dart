import 'package:flutter/material.dart';


void main(){
 runApp(const textt());
}



class textt extends StatelessWidget{
  const textt({super.key});
  @override
Widget build(BuildContext context){
  TextEditingController x=TextEditingController();
    TextEditingController r=TextEditingController();
    void cleartext(){}




  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"MY FUNCTION CALCULATOR",
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 96, 85)),
      //useMaterial3: true
    ),
    home:
    Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.grey,
      title:Text("MY FUNCTION CALCULATOR"),
    ),
    body: ListView(
children: [
  mytextfield(50,const Color.fromARGB(255, 228, 107, 99),"THE RESULT",r),
   mytextfield(100,Colors.grey,"Input Number",x),


  Row(
    
  mainAxisAlignment: MainAxisAlignment.center,
    children: [
     
//operation(x,r,"fact"),
// operation(x,r,"double"),
// operation(x,r,"minus"),
// operation(x,r,"clean")

  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(onPressed: (){
   if (x.text==""){
      r.text="enter a value first";
     }
   
    double f=1;
    
   for(int i=1;i<=int.parse(x.text);i++){
     f=f*i;
    }
   r.text=f.toString();
  
  }, child:  Text("fact")),
  ),


  Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(onPressed: (){
       if (x.text==""){
      r.text="enter a value first";
     }
  r.text=(int.parse(x.text)*-1).toString();
    } ,child:  Text("minus")),
  ),


 Padding(
   padding: const EdgeInsets.all(8.0),
   child: ElevatedButton(onPressed: (){
     if (x.text==""){
      r.text="enter a value first";
     }
     else{
 r.text=(int.parse(x.text)*2).toString();
    }},child:  Text("double")),
 ),

   Padding(
     padding: const EdgeInsets.all(8.0),
     child: ElevatedButton(onPressed: () {
      r.text="";
      x.text="";
     } , child:  Text("clear")),
   )
 
 
 
    ],
  ), 
], 
    ),
  ));
}    
 }
  Padding mytextfield(p,mycolor,str,controller) {
    return Padding(
      padding:  EdgeInsets.all(p),
      child: TextField(

      controller: controller,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.numbers),
        filled: true,
        fillColor: mycolor,
        hintText: str,
      
        border: OutlineInputBorder(
        
          borderRadius:BorderRadius.all(Radius.circular(10)),
          
        )
      ),
      ),
    );
  }





  
    