import 'package:flutter/material.dart' ; 
import 'package:audioplayers/audio_cache.dart';
import 'audio.dart';



audio()
{
  AudioPlayer();
}
MyApp(){
var mybody = Column(
children: <Widget>  [
    Container(
       margin: new EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
       alignment: Alignment.bottomCenter ,
       width: 200,
       height: 100,
       
       decoration: BoxDecoration(
         image:DecorationImage(
           fit: BoxFit.cover,
           image: NetworkImage('https://github.com/sengarsp/logo/blob/master/download%20(3).png?raw=true')
         ),
         color:Colors.blueGrey,
         borderRadius:BorderRadius.circular(20.0),
         border: Border.all(
           width:8,
           color:Colors.redAccent.shade200,
         )
       )
      ),
       Center(
    
    child: Column(children: <Widget>[
      
      RaisedButton(child: Text('Audio Player'),
      onPressed: (){
        Navigator.push (context,
         MaterialPageRoute(builder: (context)=>AudioPlayer()),
         );
      },
      padding: EdgeInsets.only(left: 10),),
    ],),
  ), /*
      Container(
       margin: new EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
       width: 200,
       height: 100,
       //color: Colors.redAccent,
       alignment: Alignment.bottomCenter ,
      
     
          decoration: BoxDecoration(
         image:DecorationImage(
           fit: BoxFit.cover,
           image: NetworkImage('https://github.com/sengarsp/logo/blob/master/download%20(7).jpg?raw=true')
         ),
         color:Colors.blueGrey,
         borderRadius:BorderRadius.circular(20.0),
         border: Border.all(
           width:8,
           color:Colors.redAccent.shade200,
         )
       )
      ),
     Center(
      child: Column(children: <Widget>[
      
      RaisedButton(child: Text('Audio Player'),
      onPressed: audio,
      padding: EdgeInsets.only(left: 10),),
      
    ],),
  ),  
       
      Container(
      
       margin: new EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
       width: 200,
       height: 100,
       //color: Colors.redAccent,
       alignment: Alignment.bottomCenter ,
      
       decoration: BoxDecoration(
         image:DecorationImage(
           fit: BoxFit.cover,
           image: NetworkImage('https://github.com/sengarsp/logo/blob/master/download%20(8).jpg?raw=true')
         ),
         color:Colors.blueGrey,
         borderRadius:BorderRadius.circular(20.0),
         border: Border.all(
           width:8,
           color:Colors.redAccent.shade200,
         )
       )
      ),
       Center(
      child:Center(child:Column(children: <Widget>[
      
      RaisedButton(child: Text('Audio Player'),
      onPressed: audio,
      padding: EdgeInsets.only(left: 10),),
      
    ],),
  ), 
       ) */
       
],
);

var MyNotiIcons = Icon(Icons.notifications);
  var MycartIcons = Icon(Icons.file_download);

  var MyNotiButton = IconButton(icon: MyNotiIcons , onPressed: null);
  var MyCartButton = IconButton(icon: MycartIcons, onPressed: null);

    var MyHome = 
     Scaffold (appBar: AppBar(
       title: Text('Media Player'),
       leading:Image.network('https://github.com/sengarsp/logo/blob/master/download%20(6).jpg?raw=true'),
      backgroundColor: Colors.lightGreenAccent,
      actions: <Widget>[MyCartButton,MyNotiButton],
    
     ),
     body : mybody,
     backgroundColor: Colors.amber,
     );

  return MaterialApp(home:MyHome,

  debugShowCheckedModeBanner: false,
  );
}

