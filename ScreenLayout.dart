import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ScreenLayout extends StatefulWidget {

  @override
  _ScreenLayoutState createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {

Widget moreItems(){
  return GridView.count(
    shrinkWrap: true,physics: NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(list.length, (index) {
                    return Column(
                      children: [
                        Container(
                          height: 50,
                          // width: 100,
                          // color: Colors.amber,
                          child:Image.asset(list[index], width: 200, height: 150, fit: BoxFit.fitHeight,),
                        ),
                        Container(
                          height: 50,
                          // width: 100,
                          // color: Colors.amber,
                          child:Column(
                            children: [
                              Text(values[index],),
                              Row(
                                children: [
                              Icon(Icons.star, size: 10,),
                              Icon(Icons.star, size: 10,),
                              Icon(Icons.star, size: 10,),
                              Icon(Icons.star, size: 10,),
                              Icon(Icons.star, size: 10,),
                              Text(" 5.0 23(Reviews)"),
                              ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                    
                  }),              
          );
}
var list = ["assets/pic1.jpg","assets/pic2.jpg","assets/pic3.jpg","assets/pic4.jpg","assets/pic5.jpg","assets/pic6.jpg","assets/pic7.jpg","assets/pic8.jpg","assets/pic9.jpg","assets/pic10.jpg"];
var values = ["IPhone 12","","Macbook Air", "Macbook Pro", "Gaming PC","Mutton","RoadSter","Royal Field","Note 20 Ultra","Wireless"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Row(
            children: [
              Text("Ecom App UI", style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Container(
                child: Icon(Icons.notifications, color: Colors.black),
                margin: EdgeInsets.only(left:110),
              ),
            ],),
            ),
      ),

      body: SingleChildScrollView(
              child: Column(
          children: [
              
                ListTile(
                  title: Text("Items", style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Text("View More", style: TextStyle(color: Colors.purple),),
                ),
  
              CarouselSlider(items: <Widget>[
              layout("pic1.jpg","5.0 23 (Reviews","IPhone 12"),
              layout("pic2.jpg","5.0 23 (Reviews)","Mercedes"),
              layout("pic3.jpg","5.0 23 (Reviews)","Macbook Air"),
              layout("pic4.jpg","5.0 23 (Reviews)","Macbook Pro"),
              layout("pic5.jpg","5.0 23 (Reviews)","Backlit Keyboard"),
                ],
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
              ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("More Categories",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              Row(children: [
              more("clothes.png","Clothes","5 Items"),
              SizedBox(width:5),
              more("electronic.png","Electronic","5 Items"),
              SizedBox(width:5),
              // more("appliances.png","Appliances","5 Items"),
              // SizedBox(width:10),
              // more("household.png","Household","5 Items"),
              // SizedBox(width:10),
              more("others.png","Others","5 Items"),
              ],),

                Align(
                alignment: Alignment.centerLeft,
                child: Text("Popular Items",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                SizedBox(height: 10),
              moreItems(),
              // Text("Mercedes"),
             ]),
             
      ),
    );
  }
}

Widget layout(dynamic image, dynamic name, dynamic text){
  return Container(
              //  color: Colors.amber,  
              // padding: EdgeInsets.only(left:10),
              // margin: EdgeInsets.only(left:16),  
              child:Column(
                children: [
                  Image.asset(image,width: 280, height: 120,fit: BoxFit.cover,),
                  Container(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(text,style: TextStyle(fontWeight: FontWeight.bold),)),
                      margin: EdgeInsets.only(left:25),
                  ),
                  Row(
                    children: [
                  
                  Container(
                  child: Icon(Icons.star,color: Colors.yellow, size: 20,),
                  margin:EdgeInsets.only(left:20),),
                  Icon(Icons.star,color: Colors.yellow, size: 20,),
                  Icon(Icons.star,color: Colors.yellow,size: 20,),
                  Icon(Icons.star,color: Colors.yellow,size: 20,),
                  Icon(Icons.star,color: Colors.yellow,size: 20,),
                  Text(name),
                  ],),
              ]),
  )   ;
}

Widget more(var image, var text1, var text2){
  return Row(children: [
                             Image.asset(image,width: 40,height: 20,),
                              Column(
                                children: [
                                  Text(text1,style: TextStyle(fontWeight: FontWeight.bold),),
                                
                                  Text(text2),
                               ],
                              ),
  ],);
  
}

