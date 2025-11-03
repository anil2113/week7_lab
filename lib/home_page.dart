import 'package:flutter/material.dart';

// Public class to display home page 
class HomePage extends StatefulWidget{

  const HomePage({super.key});
  @override
  State<HomePage>createState() => _HomePage();


}

//private class accessable to its parent only 
class _HomePage extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    
    // return Center(child: Text('Body section will go here'));
return Scaffold(
  appBar: AppBar(title:Text('AnilApp'),),

  // body
  body: ListView(
    children: [
      // child 1
      ListTile(
        leading:Icon(Icons.circle),
        title:Text('My wife'),
        subtitle: Text('This is a family app for our family. In this group we can share about our family discussion.',
           maxLines:1, overflow: TextOverflow.ellipsis,),
          trailing:Icon(Icons.favorite),
          onTap: (){
            // on click, display pop-up message
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('You have clicked...'),
                duration:Duration(seconds:3),)
              );
            

          },

        ),

        // child 2
        ListTile(
        leading:Icon(Icons.circle),
        title:Text('My Parents'),
        subtitle: Text('This is a parents group for our family. In this group we can share about our family discussion.',
           maxLines:1, overflow: TextOverflow.ellipsis,),
          trailing:Icon(Icons.favorite),
          onTap: (){
            // on click, display pop-up message
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('You have clicked Parents Group...'),
                duration:Duration(seconds:10),)
              );
            

          },

        ),




      

    ],
  ),

);
  }
}
