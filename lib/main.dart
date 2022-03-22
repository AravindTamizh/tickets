import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'colors.dart';

void main()=>runApp(
    MaterialApp(
      home:Ticketgeneration() ,
      debugShowCheckedModeBanner: false,
    ));

class Ticketgeneration extends StatelessWidget {
  const Ticketgeneration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Container(
          height: 100,
          width: 60,
          child: FloatingActionButton(

            onPressed: null,
            backgroundColor:Colors.green,
            child: Icon(Icons.home,
            color: Colors.white,),
          ),
        ),
      ),
      bottomNavigationBar:  Container(
        height: 63,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.green,
          notchMargin: 5,
          child: BottomNavigationBar(items: [
            BottomNavigationBarItem(
              title: Text(""),
              icon: Padding(
                padding: const EdgeInsets.only(right: 15,top: 5),
                child: Icon(Icons.bookmark,color: Colors.black54,),
              ),

              backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Icon(Icons.library_books,color: Colors.black54,),
              ),
            ),

            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.camera_alt_rounded,color: Colors.black54,),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.image_sharp,color: Colors.black54,),
            ),
          ],
          ),

        ),
      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: blueback,


      body: SafeArea(
        child: Column(
          children: [
            _appBar(context),
            SizedBox(height: 8,),
            _searchbox(),
            SizedBox(height: 8,),

            _dataList(),
          ],
        ),
      ),

    );
  }
  Container _appBar(context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: Color.fromRGBO(25, 77, 77, 1)
      ),
      child: Stack(
        children: [
          Container(
            height: 60,
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_back_ios,color: Colors.white,),
                    SizedBox(width: 60),
                    Center(
                      child: Text("TICKETUBERSICHT",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white,
                          fontSize: 18,letterSpacing: 1,decorationColor: Colors.green,decorationThickness: 4)),
                    ),

                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 100,
                  right: 120,
                  child: Container(
                    height: 4,
                    width: MediaQuery.of(context).size.width*0.7,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                    ),
                  ),
                )
              ],
            ),
          ),


          Positioned(
              right: 10,
              top:0,
              bottom: 0,
              child: Row(
                children: [

                  Icon(Icons.info_outline_rounded,color: Colors.white,),
                  SizedBox(width:12),
                  Icon(Icons.notifications,color:Colors.white),
                  SizedBox(width:15),
                ],
              ))
        ],
      ),
    );
  }
  Widget _searchbox(){
    return Container(
      height: 44,
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: blueback,
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            color: Colors.grey.withAlpha(80),
            blurRadius: 2,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.add,color: Colors.white,),
            ),
          ),
          Text("Ticket hinzufugen",style: TextStyle(color: Colors.teal),)
        ],


      ),
    );
  }

  Widget _dataList() {
    return Expanded(
      child: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, i) {
        return       Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13) ,
            child: SwipeActionCell(

              key: ObjectKey("jh"),
              trailingActions: <SwipeAction>[
                SwipeAction(
                    title: "Loschen",
                    icon: Icon(Icons.delete,color: Colors.white,),
                    onTap: (CompletionHandler handler) async {

                    },
                    color: Colors.deepOrange),
              ],
              child:Container(
                height: 145,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 2,
                      color: Colors.white,
                      blurRadius: 2,

                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 3,
                      decoration: BoxDecoration(
                          color: i==0||i==1?
                          Colors.deepOrange:Colors.black,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(14),bottomLeft: Radius.circular(14))
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5,top: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Artikelnummer",style: TextStyle(color: Colors.teal),),
                          SizedBox(height: 2),

                          Text("beschreibung",style: TextStyle(color: Colors.teal),),
                          SizedBox(height: 2),

                          Text("TIC09-10"),
                          SizedBox(height: 24),

                          Text("Problem",style: TextStyle(color: Colors.teal),),
                          SizedBox(height: 8),

                          Text("Oberflache"),
                          Text("Montage"),


                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 120,
                      width: 3,
                      color: Colors.teal,
                    ),

                    SizedBox(width: 10),

                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Notizen",style: TextStyle(color: Colors.teal),),
                          SizedBox(height: 8,),

                          Text("Macke reingehauen"),

                        ],
                      ),
                    ),
                    SizedBox(width: 10),

                    Container(
                      height: 120,
                      width: 3,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Image.asset("assets/images/gallery.jpeg",height: 20),
                        SizedBox(width: 4),
                        Text("Galerie",style: TextStyle(color: Colors.teal),),

                      ],

                    ),

                  ],

                ),
              ),
            ),
          ),
        );


      },
      ),
    );
  }
}


