import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
void main() {
  //debugPaintSizeEnabled=false;
  runApp(MyApp());
}
class MyCardImage extends StatelessWidget {
  MyCardImage({this.imageNo,this.customText});

  final int imageNo;
  final String customText;

  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 10,
        child:Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                constraints: new BoxConstraints.expand(
                  height: 320.0,
                  width:320.0,
                ),
                alignment: Alignment.bottomCenter,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/images/"+imageNo.toString()+"-min.jpg"),
                    fit: BoxFit.cover,),
                ),
              ),
              Container(
                height: 320.0,
                width:320.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(

                        begin: FractionalOffset.center,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                        stops: [0.0,1.0]
                    )
                ),
              ),
              Text(customText,style:new TextStyle(fontSize: 40.0,color:Colors.white),),

            ]),
        margin: const EdgeInsets.all(20.0),

      );
  }
}
class MyCardImageTwo extends StatelessWidget {
  MyCardImageTwo({this.imageNo});

  final int imageNo;


  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 10,
        child:
              Container(
                constraints: new BoxConstraints.expand(
                  height: 320.0,
                  width:320.0,
                ),
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/images/"+imageNo.toString()+"-min.jpg"),
                    fit: BoxFit.cover,),
                ),
             ),
        margin: const EdgeInsets.all(20.0),

      );
  }
}

class MyCardText extends StatelessWidget {
  MyCardText({this.customText,this.fontSize});

  final String customText;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 10,
        child:Stack(
            children: <Widget>[

              Container(
                width:320,
                padding: const EdgeInsets.all(5.0),
                child:Center(child:Text(customText,textAlign:TextAlign.center,style:new TextStyle(fontSize: fontSize,),),),
              ),
              /*Row(
                              mainAxisAlignment:MainAxisAlignment.center ,
                              children:[

                                Icon(Icons.favorite,color:Colors.red,size:40),
                              ],),*/


            ]),
        margin: const EdgeInsets.all(20.0),

      );
  }
}

class MyApp extends StatelessWidget {
  double size;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Flutter layout demo',
        theme: ThemeData(fontFamily: 'Pacifico'),
        home: Scaffold(
          body: Container(
            decoration: new BoxDecoration(
              /*image: new DecorationImage(

                fit: BoxFit.cover,),
              ),
*/
              color: Colors.grey[320],),
            child: ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,

            children: [

              ConstrainedBox(
                constraints:BoxConstraints.expand(height:320),
                child:ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,


                    children: [
                      Card(
                        elevation: 10,
                        child:Stack(
                            alignment: Alignment.bottomCenter,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                  height: 320.0,
                                  width:320.0,
                                ),
                                alignment: Alignment.bottomCenter,
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage("assets/images/1-min.jpg"),
                                    fit: BoxFit.cover,),
                                ),
                              ),
                              Container(
                                height: 320.0,
                                width:320.0,
                                decoration: BoxDecoration(
                                    gradient: new LinearGradient(

                                        begin: FractionalOffset.center,
                                        end: FractionalOffset.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          Colors.black.withOpacity(0.7),
                                        ],
                                        stops: [0.0,1.0]
                                    )
                                ),
                              ),
                              Container(
                                width:300,
                                padding: const EdgeInsets.all(5.0),
                                child:Text("Here's Wishing you a very Happy Birthday ❤️",textAlign:TextAlign.center,style:new TextStyle(fontSize: 30.0,color:Colors.white),),
                              ),
                              /*Row(
                              mainAxisAlignment:MainAxisAlignment.center ,
                              children:[

                                Icon(Icons.favorite,color:Colors.red,size:40),
                              ],),*/


                            ]),
                        margin: const EdgeInsets.all(20.0),

                      ),
                      MyCardText(fontSize:50,customText: "On this day,"),
                      MyCardText(fontSize:50,customText: "22 years ago"),
                      MyCardText(fontSize:50,customText: "The world was blessed with the birth of"),
                      MyCardText(fontSize:50,customText: "The Genius"),
                      MyCardText(fontSize:50,customText: "The Slim and Trim"),
                      MyCardText(fontSize:50,customText: "The One and Only"),
                      Card(
                        elevation: 10,
                        child:Container(
                                constraints: new BoxConstraints.expand(
                                  height: 320.0,
                                  width:320.0,
                                ),
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage("assets/images/10.gif"),
                                    fit: BoxFit.cover,),
                                ),
                              ),


                        margin: const EdgeInsets.all(20.0),

                      ),
                      Card(
                        elevation: 10,
                        child:Stack(
                            alignment: Alignment.bottomCenter,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                  height: 320.0,
                                  width:320.0,
                                ),
                                alignment: Alignment.bottomCenter,
                                decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage("assets/images/11.gif"),
                                    fit: BoxFit.cover,),
                                ),
                              ),
                              Container(
                                height: 320.0,
                                width:320.0,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    gradient: LinearGradient(

                                        begin: FractionalOffset.center,
                                        end: FractionalOffset.bottomCenter,
                                        colors: [
                                          Colors.transparent,
                                          Colors.black.withOpacity(0.7),
                                        ],
                                        stops: [0.0,1.0]
                                    )
                                ),
                              ),
                              Container(
                                width:320,
                                padding: const EdgeInsets.all(5.0),
                                child:Text("Aditi Marwaha (Aadu) ❤😊",textAlign:TextAlign.center,style:new TextStyle(fontSize: 35.0,color:Colors.white),),
                              ),


                            ]),
                        margin: const EdgeInsets.all(20.0),

                      ),
                    ]),),
              MyCardText(fontSize:40,customText:"Friends listen to what you say, best friends listen to what you don't say. Wish you love, hope and everlasting joy and happiness."),
              ConstrainedBox(
                constraints:BoxConstraints.expand(height:320),
                child:ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,


                    children: [
                      Card(
                        elevation: 10,
                        child:Stack(
                            children: <Widget>[

                              Container(
                                width:320,
                                padding: const EdgeInsets.all(5.0),
                                child:Center(child:Text("You are all of this, and from this day forward I wish you be even more →",textAlign:TextAlign.center,style:new TextStyle(fontSize: 35.0,),),),
                              ),
                              /*Row(
                              mainAxisAlignment:MainAxisAlignment.center ,
                              children:[

                                Icon(Icons.favorite,color:Colors.red,size:40),
                              ],),*/


                            ]),
                        margin: const EdgeInsets.all(20.0),

                      ),
                      MyCardImage(imageNo:2,customText:"Blissful"),
                      MyCardImage(imageNo:3,customText:"Pagal"),
                      MyCardImage(imageNo:4,customText:"Dreamy"),
                      MyCardImage(imageNo:5,customText:"Crazy"),
                      MyCardImage(imageNo:6,customText:"Dabangg"),
                      MyCardImage(imageNo:8,customText:"Sexy"),
                      MyCardImage(imageNo:9,customText:"Caring"),
                      MyCardImage(imageNo:7,customText:"Bold"),


                    ]),),

              ConstrainedBox(
                constraints:BoxConstraints.expand(height:320),
                child:MyCardText(fontSize:40,customText:"Treasure Chest of Memories"),
              ),

              ConstrainedBox(
                constraints:BoxConstraints.expand(height:320),
                child:ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,


                    children: [
                      MyCardText(fontSize:40,customText:"First Year →"),
                      MyCardImageTwo(imageNo: 12),
                      MyCardImageTwo(imageNo: 13),
                      MyCardImageTwo(imageNo: 14),
                      MyCardImageTwo(imageNo: 15),
                      MyCardImageTwo(imageNo: 16),
                      MyCardImageTwo(imageNo: 17),
                      MyCardImageTwo(imageNo: 18),
                      MyCardImageTwo(imageNo: 19),
                      MyCardImageTwo(imageNo: 20),
                      MyCardImageTwo(imageNo: 51),
                      MyCardImageTwo(imageNo: 22),
                      MyCardImageTwo(imageNo: 23),
                      MyCardImageTwo(imageNo: 24),
                      MyCardImageTwo(imageNo: 27),
                      MyCardImageTwo(imageNo: 25),
                      MyCardImageTwo(imageNo: 52),
                      MyCardImageTwo(imageNo: 28),

                    ]),),
              ConstrainedBox(
                constraints:BoxConstraints.expand(height:320),
                child:ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,


                    children: [
                      MyCardText(fontSize:40,customText:"Second Year →"),
                      MyCardImageTwo(imageNo: 30),
                      MyCardImageTwo(imageNo: 31),
                      MyCardImageTwo(imageNo: 32),
                      MyCardImageTwo(imageNo: 33),
                      MyCardImageTwo(imageNo: 34),
                      MyCardImageTwo(imageNo: 35),
                      MyCardImageTwo(imageNo: 50),
                      MyCardImageTwo(imageNo: 36),
                      MyCardImageTwo(imageNo: 37),
                      MyCardImageTwo(imageNo: 38),
                      MyCardImageTwo(imageNo: 39),
                      MyCardImageTwo(imageNo: 40),
                      MyCardImageTwo(imageNo: 41),
                      MyCardImageTwo(imageNo: 42),
                      MyCardImageTwo(imageNo: 43),
                      MyCardImageTwo(imageNo: 44),
                      MyCardImageTwo(imageNo: 45),
                      MyCardImageTwo(imageNo: 46),
                      MyCardImageTwo(imageNo: 49),
                      MyCardImageTwo(imageNo: 47),
                      MyCardImageTwo(imageNo: 48),
                      MyCardImageTwo(imageNo: 53),
                      MyCardImageTwo(imageNo: 54),
                      MyCardImageTwo(imageNo: 55),
                      MyCardImageTwo(imageNo: 56),
                      MyCardImageTwo(imageNo: 57),

                    ]),
              ),
              ConstrainedBox(
                constraints:BoxConstraints.expand(height:320),
                child:ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,


                    children: [
                      MyCardText(fontSize:40,customText:"Third Year →"),

                      MyCardImageTwo(imageNo: 60),
                      MyCardImageTwo(imageNo: 61),
                      MyCardImageTwo(imageNo: 62),
                      MyCardImageTwo(imageNo: 63),
                      MyCardImageTwo(imageNo: 64),
                      MyCardImageTwo(imageNo: 66),
                      MyCardImageTwo(imageNo: 67),
                      MyCardImageTwo(imageNo: 68),
                      MyCardImageTwo(imageNo: 70),
                      MyCardImageTwo(imageNo: 71),
                      MyCardImageTwo(imageNo: 72),
                      MyCardImageTwo(imageNo: 73),
                      MyCardImageTwo(imageNo: 75),
                      MyCardImageTwo(imageNo: 76),
                      MyCardImageTwo(imageNo: 77),
                      MyCardImageTwo(imageNo: 78),
                      MyCardImageTwo(imageNo: 79),
                      MyCardImageTwo(imageNo: 80),
                      MyCardImageTwo(imageNo: 81),
                      MyCardImageTwo(imageNo: 82),




                    ]),
              ),
              ConstrainedBox(
                constraints:BoxConstraints.expand(height:320),
                child:ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,


                    children: [
                      MyCardText(fontSize:40,customText:"Fourth  Year →"),

                      MyCardImageTwo(imageNo: 83),
                      MyCardImageTwo(imageNo: 84),
                      MyCardImageTwo(imageNo: 85),

                      MyCardImageTwo(imageNo: 86),
                      MyCardImageTwo(imageNo: 87),
                      MyCardImageTwo(imageNo: 88),
                      MyCardImageTwo(imageNo: 89),
                      MyCardImageTwo(imageNo: 90),
                      MyCardImageTwo(imageNo: 103),
                      MyCardImageTwo(imageNo: 91),
                      MyCardImageTwo(imageNo: 92),
                      MyCardImageTwo(imageNo: 101),
                      MyCardImageTwo(imageNo: 102),
                      MyCardImageTwo(imageNo: 93),
                      MyCardImageTwo(imageNo: 104),
                      MyCardImageTwo(imageNo: 94),
                      MyCardImageTwo(imageNo: 95),
                      MyCardImageTwo(imageNo: 96),
                      MyCardImageTwo(imageNo: 97),
                      MyCardImageTwo(imageNo: 98),
                      MyCardImageTwo(imageNo: 99),
                      MyCardImageTwo(imageNo: 100),
                    ]),
              ),


              /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.green[500]),
              Icon(Icons.star, color: Colors.black),
              Icon(Icons.star, color: Colors.black),]
            ),*/

            ]),

          ),

        ),
        )
    );
  }
}
class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(100),

        color: Colors.grey[360],
      ),

    );
  }
}


/*
child: Center(
child: Text(
'Hello World',
textDirection: TextDirection.ltr,
style: TextStyle(
fontSize: 32,
color: Colors.black87,
),
),
),*/
