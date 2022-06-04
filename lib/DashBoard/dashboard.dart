// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stakeholders/DashBoard/slider_widget.dart';
class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   backgroundColor: Color(0xFFFF9F45),
      //   elevation: 1,
      //   actions: [
      //     Container(
      //       margin: EdgeInsets.only(right: 15),
      //       child: Icon(Icons.notifications_active))
      //   ],
      //   title: Text("Home Page"),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Welcome Expert",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Icon(Icons.person,color: Colors.white,))
              ],
            ),
          
            SizedBox(height: 20,),
            
            Container(
              
            height:  MediaQuery.of(context).size.height *0.25,
           
            child: SliderWidget()),
            SizedBox(height: 10,),
             GridView.count(
                shrinkWrap: true,
                  primary: true,
               crossAxisCount: 2,
             // ignore: prefer_const_literals_to_create_immutables
             children: [
               Card(
                 elevation: 3,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20)
                 ),
                 child: Column(
                   children: [
                     Image.asset("asset/images/cse.png",height: MediaQuery.of(context).size.height * 0.17,),
                     Divider(),
                     Text("FLAT",style: TextStyle(fontSize: 18),),
                   ],
                 ),
               ),
               Card(
                 
                 elevation: 3,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20)
                 ),
                 child: Column(
                   children: [
                     Image.asset("asset/images/ai.png",height: MediaQuery.of(context).size.height * 0.17,
                     
                     ),
                     Divider(),
                     Text("AI",style: TextStyle(fontSize: 18),),
                    
                   ],
                 ),
               ),
             ],
             ),
             SizedBox(height: 20,),
            AccQues(col: Colors.lightGreen.shade800, tex: 'Accepted Questions', coun: '20',),
            SizedBox(height: 10,),
            AccQues(col: Colors.red.shade800, tex: 'Rejected Questions', coun: '18',),
            AccQues(col: Colors.blueAccent, tex: 'Pending Questions', coun: '25',),
           
            
              
           
            
          ],
          
          ),
        ),
      ),
    );
  }
}

class AccQues extends StatelessWidget {
  const AccQues({
    Key? key, required this.col, required this.tex, required this.coun,
  }) : super(key: key);
  final Color col;
  final String tex;
  final String coun;

  @override
  Widget build(BuildContext context) {
    return Container(
     

      width: MediaQuery.of(context).size.width ,
      child: Card(
        
        color: col,
        shape: RoundedRectangleBorder(
          
          borderRadius: BorderRadius.circular(20)
        ),
        child: Container(
          
    //       decoration: BoxDecoration(
    //    border: Border.all(color: Colors.black,
    //    width: 4,
    //    ),
    //    borderRadius: BorderRadius.circular(20),
       
    //  ),
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              Text(tex,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),),
              Text(coun),
            ], 
          )),
      ),
    );
  }
}