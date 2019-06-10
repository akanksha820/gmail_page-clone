import 'package:demoapp/screens/show_email.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  MyHomePage createState(){
    return MyHomePage();
  }
}

class MyHomePage extends State<Home> {
    List<Map> content = [ 
     {
     "titles" : "First mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.black ,
    "texts" : "F"
   },
   {
     "titles" : "First mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.red ,
    "texts" : "F"
   },
   {
     "titles" : "Second mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.blue ,
    "texts" : "F"
   },
   {
     "titles" : "Third mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.orange ,
    "texts" : "F"
   },
   {
     "titles" : "fourth mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.grey ,
    "texts" : "F"
   },
   {
     "titles" : "First mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.green ,
    "texts" : "F"
   },
   {
     "titles" : "First mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.purple ,
    "texts" : "F"
   },
   {
     "titles" : "Second mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.pink ,
    "texts" : "F"
   },
   {
     "titles" : "Third mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.yellow ,
    "texts" : "F"
   },
   {
     "titles" : "fourth mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.pink ,
    "texts" : "F"
   },
   {
     "titles" : "First mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.green,
    "texts" : "F"
   },
   {
     "titles" : "First mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.brown ,
    "texts" : "F"
   },
   {
     "titles" : "Second mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.purpleAccent ,
    "texts" : "F"
   },
   {
     "titles" : "Third mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.white ,
    "texts" : "F"
   },
   {
     "titles" : "fourth mail" ,
     "subTitles" : "Hello this is myfirst mail" ,
     "body" : "This is the body of the mail" ,
     "color" : Colors.red ,
    "texts" : "F"
   },];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () { print("compose");},
        backgroundColor:  Colors.red ,
        child : Icon(Icons.edit)
      ),
      appBar: AppBar(
        centerTitle: false,
        title : Text("Unread"),
        backgroundColor: Colors.red,
        leading : Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon : Icon(Icons.search) ,
            onPressed:  () { print("serach");},
          )
        ],

      ),
      body : ListView.separated(
        itemCount: content.length,
        separatorBuilder: (BuildContext context , int index) {
          return Container(
            height: 2,
            color: Colors.grey
          );
        },
        itemBuilder : (BuildContext context , int index) {
          return InkWell(
              onTap: () => Navigator.push(context , MaterialPageRoute(builder: (BuildContext context) => ShowEmail(body :content[index]["subTitles"]))),
                      child: ListTile(
              leading: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(content[index]["texts"] , 
                  style : TextStyle(fontSize: 25.0) , 
                  textAlign: TextAlign.center ),
                )  ,
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color : content[index]["color"],
                  // border : Border.all(width: 0.5) ,
                  borderRadius : BorderRadius.circular(100.0)
                ) ,
               
          
              ),
              title: Container(
                width: MediaQuery.of(context).size.width-100,
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                      Row(

                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(content[index]["titles"] ,
                          style : TextStyle(fontSize: 18.0 , fontWeight: FontWeight.bold) 
                          ) ,
                          Text("time" , 
                          style : TextStyle(fontSize: 15.0)
                          )
                        ],
                      ) ,
                      Text( content[index]["subTitles"], 
                      style : TextStyle(fontSize: 16.0  , fontWeight: FontWeight.bold)) ,
                      Row(
                        children: <Widget>[
                          Expanded(
                              child: Text(
                             content[index]["body"],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ) ,
                          Icon(Icons.star_border)
                        ],
                      )
                      
                  ],
                  ),
              )
              ),
          );
        },
        shrinkWrap: true,
   
      )
      
    );
  }
}