import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [

          PageViewModel(
              titleWidget: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Write Title of Page",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,                // heres how you can use hex color code== Color(0xFF93FFFB),
                  ),
                ),
              ),
              bodyWidget:Text("write something that you want to show and read.write something that you want to show and read.write something that you want to show and read.", textAlign: TextAlign.center,style: TextStyle(fontSize: 15,),),

              image: Image.asset("images/girl.png",height: 200,width: 600,) ,
          
          ),

          PageViewModel(
            titleWidget: Text(
              "Write Title of Page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            bodyWidget:Text("write something that you want to show and read.write something that you want to show and read.write something that you want to show and read.",textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),
            // body:
            // "write something that you want to show and read.write something that you want to show and read.write something that you want to show and read.",
            image: Image.asset("images/girl.png",height: 200,width: 600,) ,

          ),
          PageViewModel(
            titleWidget: Text(
              "Write Title of Page",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            bodyWidget:Text("write something that you want to show and read.write something that you want to show and read.write something that you want to show and read.",textAlign: TextAlign.center, style: TextStyle(fontSize: 15),),
            // body:
            // "write something that you want to show and read.write something that you want to show and read.write something that you want to show and read.",
            image: Image.asset("images/girl.png",height: 200,width: 600,) ,

          ),
          
        ],
        onDone: (){
          Navigator.pushNamed(context, "home");
        },
        onSkip: (){
          Navigator.pushNamed(context, "home");
        },
        showSkipButton: true,
        skip: Text("Skip",
        style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 18,
          color: Colors.cyan
        ),),
        next: Icon(Icons.arrow_forward,color: Colors.cyan,),
        done:Text("Done",
          style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 18,
              color: Colors.cyan
          ),),
        dotsDecorator: DotsDecorator(
          size: Size.square(10.0),
          activeSize: Size(20.0,10.0),
          color: Colors.black,
          activeColor: Colors.cyan,
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          )
        ),
      ),
    );
  }
}
