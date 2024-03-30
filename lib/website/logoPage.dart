import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:seo/seo.dart';
import 'package:teitwebsite/website/websitePage.dart';

class LogoStart extends StatefulWidget{
  const LogoStart({super.key});

  @override
  LogoStartState createState ()=> LogoStartState();

}

class LogoStartState extends State<LogoStart>{


  Future<void> logoMainMethod() async{
    //todo navigate to our page=>
    Timer(const Duration(milliseconds: 1500), (){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WebsitePage()),
      );
    });
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    logoMainMethod();
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color colorCompany = const Color.fromRGBO(21, 126, 254, 1);
    double deltaWidth = width/1440;
    double deltaMobile = width/425;
    if(width>425){
      return SeoController(
          tree: WidgetTree(context: context),
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SizedBox(
                width: width,
                height: height,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Seo.text(text: "{", child: Text("{" , textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'JustAnother',
                                  fontSize: 192.0 * deltaWidth,
                                  fontWeight: FontWeight.bold,
                                  color: colorCompany
                              )
                          ),),
                          FaIcon(FontAwesomeIcons.check, size: 104 * deltaWidth, color:  colorCompany),
                          Seo.text(text: "}", child: Text("}" , textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'JustAnother',
                                  fontSize: 192.0 * deltaWidth,
                                  fontWeight: FontWeight.bold,
                                  color: colorCompany
                              )
                          ),)
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        width: 5 * deltaWidth,
                        height: 144*deltaWidth,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Seo.text(text: "TEIT \nCORP", child: Text("TEIT \nCORP" , textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'CompanyFont',
                              fontSize: 56.0 * deltaWidth,
                              fontWeight: FontWeight.bold
                          )
                      ))
                    ],
                  ),
                ),
              )
          )
      );
    }
    else{
      return SeoController(
          tree: WidgetTree(context: context),
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: SizedBox(
                width: width,
                height: height,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Seo.text(text: "{", child: Text("{" , textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'JustAnother',
                                  fontSize: 64.0 * deltaMobile,
                                  fontWeight: FontWeight.bold,
                                  color: colorCompany
                              )
                          ),),
                          FaIcon(FontAwesomeIcons.check, size: 38 * deltaMobile, color:  colorCompany),
                          Seo.text(text: "}", child: Text("}" , textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'JustAnother',
                                  fontSize: 64.0 * deltaMobile,
                                  fontWeight: FontWeight.bold,
                                  color: colorCompany
                              )
                          ),)
                        ],
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        width: 3 * deltaMobile,
                        height: 48 * deltaMobile,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Seo.text(text: "TEIT \nCORP", child: Text("TEIT \nCORP" , textAlign: TextAlign.start,
                          style: TextStyle(
                              fontFamily: 'CompanyFont',
                              fontSize: 28.0 * deltaMobile,
                              fontWeight: FontWeight.bold
                          )
                      ))
                    ],
                  ),
                ),
              )
          )
      );
    }
  }
}