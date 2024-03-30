import 'dart:async';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'package:seo/seo.dart';

class WebsitePage extends StatefulWidget{
  const WebsitePage({super.key});

  @override
  WebsitePageState createState ()=> WebsitePageState();

}

class WebsitePageState extends State<WebsitePage>{

  void _launchMailClient() async {
    String kEmail = "teitcorporation@gmail.com";
    String mailUrl = 'mailto:$kEmail';
    await launchUrl(Uri.parse(mailUrl));
  }

  void _launchTelegramClient() async {
    String telegramData = "https://t.me/AyakaComeToHome";
    await launchUrl(Uri.parse(telegramData));
  }

  Future<void> _launchURL(Uri url) async {
    await launchUrl(url);
  }

  void _showContactInfo(BuildContext context, delta) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          title: Text(
              "Наши контакты" , textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'TextFont',
                  fontSize: 28.0*delta,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
              )
          ),
          content: SizedBox(
            width: delta * 500,
            height: delta * 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      _launchTelegramClient();
                    },
                    child: Container(
                      width: delta * 459,
                      height: delta * 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: const Color.fromRGBO(248, 248, 248, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: delta * 20),
                            child: CircleAvatar(
                              backgroundColor: const Color.fromRGBO(230, 237, 247, 1),
                              radius: delta * 24.5,
                              child: FaIcon(FontAwesomeIcons.solidPaperPlane , color: const Color.fromRGBO(0, 87, 210, 1), size: delta*24,),
                            ),
                          ),
                          SizedBox(
                              height: delta * 55,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: delta * 2),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Telegram',
                                        style: TextStyle(
                                            fontFamily: 'TextFont',
                                            fontSize: 20.0*delta,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
                                        )
                                    ),
                                    Text(
                                        '@AyakaComeToHome',
                                        style: TextStyle(
                                            fontFamily: 'TextFont',
                                            fontSize: 14.0*delta,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(56, 56, 56, 1)
                                        )
                                    ),
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
               MouseRegion(
                 cursor: SystemMouseCursors.click,
                 child: GestureDetector(
                   onTap: (){
                     _launchMailClient();
                   },
                   child:  Container(
                     width: delta * 459,
                     height: delta * 90,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(22.0),
                       color: const Color.fromRGBO(248, 248, 248, 1),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Padding(
                           padding: EdgeInsets.symmetric(horizontal: delta * 20),
                           child: CircleAvatar(
                             backgroundColor: const Color.fromRGBO(230, 237, 247, 1),
                             radius: delta * 24.5,
                             child: FaIcon(FontAwesomeIcons.solidEnvelope , color: const Color.fromRGBO(0, 87, 210, 1), size: delta*24,),
                           ),
                         ),
                         GestureDetector(
                           onTap: (){
                             _launchMailClient();
                           },
                           child: SizedBox(
                               height: delta * 55,
                               child: Padding(
                                 padding: EdgeInsets.symmetric(vertical: delta * 2),
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.start,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Text(
                                         'Email',
                                         style: TextStyle(
                                             fontFamily: 'TextFont',
                                             fontSize: 20.0*delta,
                                             fontWeight: FontWeight.w700,
                                             color: Colors.black
                                         )
                                     ),
                                     Text(
                                         'teitcorporation@gmail.com',
                                         style: TextStyle(
                                             fontFamily: 'TextFont',
                                             fontSize: 14.0*delta,
                                             fontWeight: FontWeight.w600,
                                             color: const Color.fromRGBO(56, 56, 56, 1)
                                         )
                                     ),
                                   ],
                                 ),
                               )
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
               )
              ],
            ),
          ),
        );
      },
    );
  }

  void _showContactInfoMobile(BuildContext context, delta) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          title: Text(
              "Наши контакты" , textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'TextFont',
                  fontSize: 22.0*delta,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
              )
          ),
          content: SizedBox(
            width: delta * 500,
            height: delta * 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      _launchTelegramClient();
                    },
                    child: Container(
                      width: delta * 459,
                      height: delta * 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: const Color.fromRGBO(248, 248, 248, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: delta * 10),
                            child: CircleAvatar(
                              backgroundColor: const Color.fromRGBO(230, 237, 247, 1),
                              radius: delta * 18,
                              child: FaIcon(FontAwesomeIcons.solidPaperPlane , color: const Color.fromRGBO(0, 87, 210, 1), size: delta*16,),
                            ),
                          ),
                          SizedBox(
                              height: delta * 55,
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: delta * 7.5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        'Telegram',
                                        style: TextStyle(
                                            fontFamily: 'TextFont',
                                            fontSize: 14.0*delta,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
                                        )
                                    ),
                                    Text(
                                        '@AyakaComeToHome',
                                        style: TextStyle(
                                            fontFamily: 'TextFont',
                                            fontSize: 12.0*delta,
                                            fontWeight: FontWeight.w600,
                                            color: const Color.fromRGBO(56, 56, 56, 1)
                                        )
                                    ),
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      _launchMailClient();
                    },
                    child:  Container(
                      width: delta * 459,
                      height: delta * 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22.0),
                        color: const Color.fromRGBO(248, 248, 248, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: delta * 10),
                            child: CircleAvatar(
                              backgroundColor: const Color.fromRGBO(230, 237, 247, 1),
                              radius: delta * 18,
                              child: FaIcon(FontAwesomeIcons.solidEnvelope , color: const Color.fromRGBO(0, 87, 210, 1), size: delta*16,),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              _launchMailClient();
                            },
                            child: SizedBox(
                                height: delta * 55,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: delta * 7.5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          'Email',
                                          style: TextStyle(
                                              fontFamily: 'TextFont',
                                              fontSize: 14.0*delta,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      ),
                                      Text(
                                          'teitcorporation@gmail.com',
                                          style: TextStyle(
                                              fontFamily: 'TextFont',
                                              fontSize: 11.0*delta,
                                              fontWeight: FontWeight.w600,
                                              color: const Color.fromRGBO(56, 56, 56, 1)
                                          )
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Color colorCompany = const Color.fromRGBO(21, 126, 254, 1);
    double deltaWidth = width/1440;
    double deltaWidthMobile = width/425;
    if(kIsWeb) {
      // Define MetaSEO object
      MetaSEO meta = MetaSEO();
      // add meta seo data for web app as you want
      meta.author(author: 'Teit corp');
      meta.description(description: 'Teit corporation - создаем IT продукты которые подчеркнут вас и вашу компанию. Разработка информационных продуктов различной сложности.');
      meta.keywords(keywords: 'Teit Corporation, Teit, teit , teit corp, teit corporation, Teit Corp, разработка сайтов , разработка мобильных приложений , сайты , приложения');
    }

    if(width>425){
      return SeoController(
        enabled: true,
        tree: WidgetTree(context: context),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: width,
                height: height,
                color: const Color.fromRGBO(250, 250, 250, 1),
                child: SingleChildScrollView(
                  padding: EdgeInsets.zero,
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20* deltaWidth,),
                      //start bar =>
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 1128 * deltaWidth,
                          height: 55 * deltaWidth,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 55*deltaWidth,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Seo.text(text: "{", child: Text("{" , textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'JustAnother',
                                            fontSize: 42.0*deltaWidth,
                                            fontWeight: FontWeight.bold,
                                            color: colorCompany
                                        )
                                    )),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: FaIcon(FontAwesomeIcons.check, size: 32* deltaWidth, color:  colorCompany),
                                    ),
                                    Seo.text(text: "}", child: Text("}" , textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'JustAnother',
                                            fontSize: 42.0 * deltaWidth,
                                            fontWeight: FontWeight.bold,
                                            color: colorCompany
                                        )
                                    )),
                                    const SizedBox(width: 5),
                                    Container(
                                      width: 2 * deltaWidth,
                                      height: 38*deltaWidth,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Seo.text(text: "TEIT CORP",style: TextTagStyle.h1, child: Text("TEIT CORP" , textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'CompanyFont',
                                            fontSize: 32.0*deltaWidth,
                                            fontWeight: FontWeight.bold
                                        )
                                    ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 55*deltaWidth,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5*deltaWidth),
                                  child: ElevatedButton(
                                      onPressed: () {
                                        _showContactInfo(context, deltaWidth);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromRGBO(21, 126, 254, 1), // Button color
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0 * deltaWidth), // Border radius here
                                        ),
                                      ),
                                      child: Seo.text(text: 'Связаться', child: Text(
                                          'Связаться',
                                          style: TextStyle(
                                              fontFamily: 'TextFont',
                                              fontSize: 24.0*deltaWidth,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white
                                          )
                                      ),)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 100 * deltaWidth),
                      //development =>
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 1128 * deltaWidth,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //left side
                                SizedBox(
                                  width: 689 * deltaWidth,
                                  height: 520 * deltaWidth,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          height: 520 * deltaWidth,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Seo.text(text: "Разработка приложений и веб сайтов", style : TextTagStyle.h2, child: Container()),
                                              SizedBox(
                                                height: 77 * deltaWidth,
                                                child: Seo.text(text: 'Разработка', child: Text(
                                                    'Разработка', textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontFamily: 'TextFont',
                                                        fontSize: 60.0*deltaWidth,
                                                        fontWeight: FontWeight.w700,
                                                        color: Colors.black
                                                    )
                                                ),)
                                              ),
                                              SizedBox(
                                                height: 102 * deltaWidth ,
                                                child: Seo.text(text: 'ПРИЛОЖЕНИЙ', child: Text(
                                                    'ПРИЛОЖЕНИЙ', textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontFamily: 'TextFont',
                                                        fontSize: 80.0*deltaWidth,
                                                        fontWeight: FontWeight.w900,
                                                        color: Colors.black
                                                    )
                                                ),)
                                              ),
                                              SizedBox(
                                                height: 102 * deltaWidth,
                                                child: Seo.text(text: 'И ВЕБ САЙТОВ', child: Text(
                                                    'И ВЕБ САЙТОВ', textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontFamily: 'TextFont',
                                                        fontSize: 80.0*deltaWidth,
                                                        fontWeight: FontWeight.w900,
                                                        color: Colors.black
                                                    )
                                                ),)
                                              ),
                                              SizedBox(
                                                height: 30 * deltaWidth,
                                                child: Seo.text(text: 'Создаем сайты которые подчеркнут вас и вашу компанию.', child: Text(
                                                    'Создаем сайты которые подчеркнут вас и вашу компанию.', textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                        fontFamily: 'TextFont',
                                                        fontSize: 20.0*deltaWidth,
                                                        fontWeight: FontWeight.w600,
                                                        color: const Color.fromRGBO(76, 76, 76, 1)
                                                    )
                                                ),)
                                              ),
                                              SizedBox(
                                                height: 55*deltaWidth,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(vertical: 5* deltaWidth),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      _showContactInfo(context, deltaWidth);
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: const Color.fromRGBO(21, 126, 254, 1), // Button color
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(8.0 * deltaWidth), // Border radius here
                                                      ),
                                                    ),
                                                    child: Seo.text(text: 'Связаться', child: Text(
                                                        'Связаться',
                                                        style: TextStyle(
                                                            fontFamily: 'TextFont',
                                                            fontSize: 28.0*deltaWidth,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.white
                                                        )
                                                    ),)
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 439 * deltaWidth,
                                  height: 520 * deltaWidth,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Image.asset('assets/images/phoneHand.png', filterQuality: FilterQuality.high),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 240 * deltaWidth,),
                      //steps to develop
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 1128 * deltaWidth,
                            height: 383 * deltaWidth,
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 77 * deltaWidth,
                                  child: Seo.text(text: 'Этапы разработки', child: Text(
                                      'Этапы разработки', textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'TextFont',
                                          fontSize: 60.0*deltaWidth,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      )
                                  ),)
                                ),
                                SizedBox(
                                  height: 259 * deltaWidth,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      DottedBorder(
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(10 * deltaWidth),
                                          color: const Color.fromRGBO(255, 133, 0, 1),
                                          strokeWidth: 2,
                                          dashPattern: [10 * deltaWidth , 2 * deltaWidth],
                                          child:  SizedBox(
                                              width: 239 * deltaWidth,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 35 * deltaWidth,
                                                    backgroundColor: const Color.fromRGBO(255, 133, 0, 1),
                                                    child: Align(
                                                      alignment: Alignment.center,
                                                      child: FaIcon(FontAwesomeIcons.userGroup, size: 28 * deltaWidth, color: const Color.fromRGBO(255, 211, 162, 1),),
                                                    ),
                                                  ),
                                                  SizedBox(height: 30 * deltaWidth,),
                                                  Seo.text(text: 'Командная \nвстреча', child: Text(
                                                      'Командная \nвстреча', textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 25.0*deltaWidth,
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.black
                                                      )
                                                  ),)
                                                ],
                                              )
                                          )
                                      ),
                                      DottedBorder(
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(10 * deltaWidth),
                                          color: const Color.fromRGBO(33, 158, 188, 1),
                                          strokeWidth: 2,
                                          dashPattern: [10 * deltaWidth , 2 * deltaWidth],
                                          child:  SizedBox(
                                              width: 239 * deltaWidth,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 35 * deltaWidth,
                                                    backgroundColor: const Color.fromRGBO(33, 158, 188, 1),
                                                    child: Align(
                                                      alignment: Alignment.center,
                                                      child: FaIcon(FontAwesomeIcons.wandMagicSparkles, size: 28 * deltaWidth, color: const Color.fromRGBO(115, 228, 255, 1)),
                                                    ),
                                                  ),
                                                  SizedBox(height: 30 * deltaWidth,),
                                                  Seo.text(text: 'Дизайн \nприложения', child: Text(
                                                      'Дизайн \nприложения', textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 25.0*deltaWidth,
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.black
                                                      )
                                                  ),)
                                                ],
                                              )
                                          )
                                      ),
                                      DottedBorder(
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(10 * deltaWidth),
                                          color: const Color.fromRGBO(255, 183, 3, 1),
                                          strokeWidth: 2,
                                          dashPattern: [10 * deltaWidth , 2 * deltaWidth],
                                          child:  SizedBox(
                                              width: 239 * deltaWidth,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 35 * deltaWidth,
                                                    backgroundColor: const Color.fromRGBO(255, 183, 3, 1),
                                                    child: Align(
                                                      alignment: Alignment.center,
                                                      child: FaIcon(FontAwesomeIcons.code, size: 28 * deltaWidth, color: const Color.fromRGBO(255, 220, 133, 1),),
                                                    ),
                                                  ),
                                                  SizedBox(height: 30 * deltaWidth,),
                                                  Seo.text(text: 'Написание \nкода', child:  Text(
                                                      'Написание \nкода', textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 25.0*deltaWidth,
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.black
                                                      )
                                                  ),)
                                                ],
                                              )
                                          )
                                      ),
                                      DottedBorder(
                                          borderType: BorderType.RRect,
                                          radius: Radius.circular(10 * deltaWidth),
                                          color: const Color.fromRGBO(142, 202, 230, 1),
                                          strokeWidth: 2,
                                          dashPattern: [10 * deltaWidth , 2 * deltaWidth],
                                          child:  SizedBox(
                                              width: 239 * deltaWidth,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    radius: 35 * deltaWidth,
                                                    backgroundColor: const Color.fromRGBO(142, 202, 230, 1),
                                                    child: Align(
                                                      alignment: Alignment.center,
                                                      child: FaIcon(FontAwesomeIcons.rocket, size: 28 * deltaWidth, color: const Color.fromRGBO(176, 230, 255, 1),),
                                                    ),
                                                  ),
                                                  SizedBox(height: 30 * deltaWidth,),
                                                  Seo.text(text: 'Запуск \nприложения', child: Text(
                                                      'Запуск \nприложения', textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 25.0*deltaWidth,
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.black
                                                      )
                                                  ),)
                                                ],
                                              )
                                          )
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 200 * deltaWidth,),
                      //intro 1st
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 1128 * deltaWidth,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //left side
                                SizedBox(
                                  width: 439 * deltaWidth,
                                  height: 520 * deltaWidth,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Image.asset('assets/images/illustration2.png', filterQuality: FilterQuality.high, fit: BoxFit.cover,),
                                  ),
                                ),
                                SizedBox(width: 48 * deltaWidth,),
                                //right side
                                SizedBox(
                                    width: 528 * deltaWidth,
                                    height: 558 * deltaWidth,
                                    child: SizedBox(
                                        height: 267 * deltaWidth,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 132 * deltaWidth,
                                              child: Seo.text(text: 'Не знаете с чего начать?', child: Text(
                                                  'Не знаете с чего начать?', textAlign: TextAlign.end,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontFamily: 'TextFont',
                                                      fontSize: 70.0*deltaWidth,
                                                      height: 0.94,
                                                      fontWeight: FontWeight.w800,
                                                      color: Colors.black
                                                  )
                                              ),)
                                            ),
                                            SizedBox(height: 15*deltaWidth,),
                                            SizedBox(
                                              height: 120 * deltaWidth,
                                              child: Seo.text(text: 'Мы разработаем приложение/веб-сайт с нуля. Интуитивно понятный интерфейс с современным дизайном. Наши сервера надежно защищены, а решения красивы', child: Text(
                                                  'Мы разработаем приложение/веб-сайт с нуля. Интуитивно понятный интерфейс с современным дизайном. Наши сервера надежно защищены, а решения красивы',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontFamily: 'TextFont',
                                                      fontSize: 23.0*deltaWidth,
                                                      height: 1.3,
                                                      fontWeight: FontWeight.w600,
                                                      color: const Color.fromRGBO(76, 76, 76, 1)
                                                  )
                                              ),)
                                            ),
                                          ],
                                        )
                                    )
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 200 * deltaWidth,),
                      //intro 2nd
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 1128 * deltaWidth,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //left side
                                SizedBox(
                                    width: 528 * deltaWidth,
                                    height: 558 * deltaWidth,
                                    child: SizedBox(
                                        height: 267 * deltaWidth,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 132 * deltaWidth,
                                              child: Seo.text(text: 'Обратная связь 24/7', child: Text(
                                                  'Обратная связь 24/7', textAlign: TextAlign.start,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontFamily: 'TextFont',
                                                      fontSize: 70.0*deltaWidth,
                                                      height: 0.94,
                                                      fontWeight: FontWeight.w800,
                                                      color: Colors.black
                                                  )
                                              ),)
                                            ),
                                            SizedBox(height: 15*deltaWidth,),
                                            SizedBox(
                                              height: 120 * deltaWidth,
                                              child: Seo.text(text: 'Мы стремимся к превосходному обслуживанию наших клиентов и ценим ваше мнение. Мы всегда готовы выслушать ваши комментарии.', child: Text(
                                                  'Мы стремимся к превосходному обслуживанию наших клиентов и ценим ваше мнение. Мы всегда готовы выслушать ваши комментарии.',
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontFamily: 'TextFont',
                                                      fontSize: 23.0*deltaWidth,
                                                      height: 1.3,
                                                      fontWeight: FontWeight.w600,
                                                      color: const Color.fromRGBO(76, 76, 76, 1)
                                                  )
                                              ),)
                                            ),
                                          ],
                                        )
                                    )
                                ),
                                SizedBox(width: 48 * deltaWidth,),
                                //right side
                                SizedBox(
                                  width: 439 * deltaWidth,
                                  height: 520 * deltaWidth,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Image.asset('assets/images/illustration3.png', filterQuality: FilterQuality.high, fit: BoxFit.cover,),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 200 * deltaWidth,),

                      //intro 3rd
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 1128 * deltaWidth,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //left side
                                SizedBox(
                                  width: 439 * deltaWidth,
                                  height: 520 * deltaWidth,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Image.asset('assets/images/illustration4.png', filterQuality: FilterQuality.high, fit: BoxFit.cover,),
                                  ),
                                ),
                                SizedBox(width: 48 * deltaWidth,),
                                //right side
                                SizedBox(
                                    width: 528 * deltaWidth,
                                    height: 558 * deltaWidth,
                                    child: SizedBox(
                                        height: 267 * deltaWidth,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 132 * deltaWidth,
                                              child: Seo.text(text: 'Задачи и решения', child: Text(
                                                  'Задачи и решения', textAlign: TextAlign.end,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontFamily: 'TextFont',
                                                      fontSize: 70.0*deltaWidth,
                                                      height: 0.94,
                                                      fontWeight: FontWeight.w800,
                                                      color: Colors.black
                                                  )
                                              ),)
                                            ),
                                            SizedBox(height: 15*deltaWidth,),
                                            SizedBox(
                                              height: 120 * deltaWidth,
                                              child: Seo.text(text: 'Мы готовы решать ваши задачи, независимо от их сложности и масштаба. Обратитесь к нам сегодня, и мы поможем вам достичь ваших целей!', child: Text(
                                                  'Мы готовы решать ваши задачи, независимо от их сложности и масштаба. Обратитесь к нам сегодня, и мы поможем вам достичь ваших целей!',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      fontFamily: 'TextFont',
                                                      fontSize: 23.0*deltaWidth,
                                                      height: 1.3,
                                                      fontWeight: FontWeight.w600,
                                                      color: const Color.fromRGBO(76, 76, 76, 1)
                                                  )
                                              ),)
                                            ),
                                          ],
                                        )
                                    )
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 200 * deltaWidth,),

                      //rounded rectangles =>
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 1128 * deltaWidth,
                            color: Colors.transparent,
                            child: Align(
                              alignment: Alignment.center,
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 420 * deltaWidth,
                                        height: 205 * deltaWidth,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 2.0,
                                          ),
                                          borderRadius: BorderRadius.circular(35.0 * deltaWidth),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 105 * deltaWidth,
                                              height: 67 * deltaWidth,
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Image.asset('assets/images/data2.png', filterQuality: FilterQuality.high, fit: BoxFit.contain,),
                                              ),
                                            ),
                                            SizedBox(width: 25 * deltaWidth,),
                                            SizedBox(
                                                width: 250 * deltaWidth,
                                                height: 107 * deltaWidth,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                        height: 60 * deltaWidth,
                                                        child: Align(
                                                          alignment: Alignment.centerLeft,
                                                          child: Seo.text(text: 'Дизайн \nинтерфейса', child: Text(
                                                              'Дизайн \nинтерфейса', textAlign: TextAlign.start,
                                                              maxLines: 2,
                                                              style: TextStyle(
                                                                  fontFamily: 'TextFont',
                                                                  fontSize: 24.0*deltaWidth,
                                                                  height: 1.3,
                                                                  fontWeight: FontWeight.w700,
                                                                  color: Colors.black
                                                              )
                                                          ),)
                                                        )
                                                    ),
                                                    SizedBox(
                                                      height: 36 * deltaWidth,
                                                      child: Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Seo.text(text: 'Создаем привлекательный\nи понятный интерфейс', child: Text(
                                                            'Создаем привлекательный\nи понятный интерфейс',
                                                            textAlign: TextAlign.start,
                                                            style: TextStyle(
                                                                fontFamily: 'TextFont',
                                                                fontSize: 14.0*deltaWidth,
                                                                height: 1,
                                                                fontWeight: FontWeight.w600,
                                                                color: Colors.black
                                                            )
                                                        ),)
                                                      ),
                                                    ),
                                                  ],
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left:  150 * deltaWidth,
                                            bottom: 45 * deltaWidth
                                        ),
                                        child: Container(
                                          width: 420 * deltaWidth,
                                          height: 205 * deltaWidth,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(27, 27, 27, 1),
                                            borderRadius: BorderRadius.circular(35.0 * deltaWidth),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 105 * deltaWidth,
                                                height: 67 * deltaWidth,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Image.asset('assets/images/data1.png', filterQuality: FilterQuality.high, fit: BoxFit.contain,),
                                                ),
                                              ),
                                              SizedBox(width: 25 * deltaWidth,),
                                              SizedBox(
                                                  width: 250 * deltaWidth,
                                                  height: 107 * deltaWidth,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          height: 60 * deltaWidth,
                                                          child: Align(
                                                            alignment: Alignment.centerLeft,
                                                            child: Seo.text(text: 'Разработка и\nпрограммирование', child: Text(
                                                                'Разработка и\nпрограммирование', textAlign: TextAlign.start,
                                                                maxLines: 2,
                                                                style: TextStyle(
                                                                    fontFamily: 'TextFont',
                                                                    fontSize: 24.0*deltaWidth,
                                                                    height: 1,
                                                                    fontWeight: FontWeight.w700,
                                                                    color: Colors.white
                                                                )
                                                            ),)
                                                          )
                                                      ),
                                                      SizedBox(
                                                        height: 36 * deltaWidth,
                                                        child: Align(
                                                          alignment: Alignment.centerLeft,
                                                          child: Seo.text(text: 'Разработчики решат проблему\nлюбой сложности', child: Text(
                                                              'Разработчики решат проблему\nлюбой сложности',
                                                              textAlign: TextAlign.start,
                                                              style: TextStyle(
                                                                  fontFamily: 'TextFont',
                                                                  fontSize: 14.0*deltaWidth,
                                                                  height: 1,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: Colors.white
                                                              )
                                                          ),)
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 150 * deltaWidth,
                                            top: 55 * deltaWidth
                                        ),
                                        child: Container(
                                          width: 420 * deltaWidth,
                                          height: 205 * deltaWidth,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(27, 27, 27, 1),
                                            borderRadius: BorderRadius.circular(35.0 * deltaWidth),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 105 * deltaWidth,
                                                height: 67 * deltaWidth,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Image.asset('assets/images/data4.png', filterQuality: FilterQuality.high, fit: BoxFit.contain,),
                                                ),
                                              ),
                                              SizedBox(width: 25 * deltaWidth,),
                                              SizedBox(
                                                  width: 250 * deltaWidth,
                                                  height: 107 * deltaWidth,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          height: 60 * deltaWidth,
                                                          child: Align(
                                                            alignment: Alignment.centerLeft,
                                                            child: Seo.text(text: 'Тестирование \nи отладка', child: Text(
                                                                'Тестирование \nи отладка', textAlign: TextAlign.start,
                                                                maxLines: 2,
                                                                style: TextStyle(
                                                                    fontFamily: 'TextFont',
                                                                    fontSize: 24.0*deltaWidth,
                                                                    height: 1.3,
                                                                    fontWeight: FontWeight.w700,
                                                                    color: Colors.white
                                                                )
                                                            ),)
                                                          )
                                                      ),
                                                      SizedBox(
                                                        height: 36 * deltaWidth,
                                                        child: Align(
                                                          alignment: Alignment.centerLeft,
                                                          child: Seo.text(text: 'Проводим тщательное\nтестирование продуктов', child: Text(
                                                              'Проводим тщательное\nтестирование продуктов',
                                                              textAlign: TextAlign.start,
                                                              style: TextStyle(
                                                                  fontFamily: 'TextFont',
                                                                  fontSize: 14.0*deltaWidth,
                                                                  height: 1,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: Colors.white
                                                              )
                                                          ),)
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 100 * deltaWidth
                                        ),
                                        child: Container(
                                          width: 420 * deltaWidth,
                                          height: 205 * deltaWidth,
                                          decoration: BoxDecoration(
                                            color: const Color.fromRGBO(21, 126, 254, 1),
                                            borderRadius: BorderRadius.circular(35.0 * deltaWidth),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 105 * deltaWidth,
                                                height: 67 * deltaWidth,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Image.asset('assets/images/data3.png', filterQuality: FilterQuality.high, fit: BoxFit.contain,),
                                                ),
                                              ),
                                              SizedBox(width: 25 * deltaWidth,),
                                              SizedBox(
                                                  width: 250 * deltaWidth,
                                                  height: 107 * deltaWidth,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          height: 60 * deltaWidth,
                                                          child: Align(
                                                            alignment: Alignment.centerLeft,
                                                            child: Seo.text(text: 'Планирование \nи анализ', child: Text(
                                                                'Планирование \nи анализ', textAlign: TextAlign.start,
                                                                maxLines: 2,
                                                                style: TextStyle(
                                                                    fontFamily: 'TextFont',
                                                                    fontSize: 24.0*deltaWidth,
                                                                    height: 1,
                                                                    fontWeight: FontWeight.w700,
                                                                    color: Colors.white
                                                                )
                                                            ),)
                                                          )
                                                      ),
                                                      SizedBox(
                                                        height: 36 * deltaWidth,
                                                        child: Align(
                                                          alignment: Alignment.centerLeft,
                                                          child: Seo.text(text: 'Предложим лучшее решение\nдля вашего бизнеса', child: Text(
                                                              'Предложим лучшее решение\nдля вашего бизнеса',
                                                              textAlign: TextAlign.start,
                                                              style: TextStyle(
                                                                  fontFamily: 'TextFont',
                                                                  fontSize: 14.0*deltaWidth,
                                                                  height: 1,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: Colors.white
                                                              )
                                                          ),)
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      SizedBox(height: 200 * deltaWidth,),

                      //Our projects
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 1128 * deltaWidth,
                            height: 530 * deltaWidth,
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 66 * deltaWidth,
                                  child: Seo.text(text: 'Наши проекты', child: Text(
                                      'Наши проекты', textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'TextFont',
                                          fontSize: 70.0*deltaWidth,
                                          height: 0.94,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black
                                      )
                                  ),)
                                ),
                                MouseRegion(
                                  cursor:SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: (){
                                      Uri uri = Uri.parse("https://zherdesh.ru/");
                                      _launchURL(uri);
                                    },
                                    child: SizedBox(
                                      height: 411 * deltaWidth,
                                      width: 380 * deltaWidth,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          DottedBorder(
                                              borderType: BorderType.RRect,
                                              radius: Radius.circular(35 * deltaWidth),
                                              color: const Color.fromRGBO(77, 170, 232, 1),
                                              strokeWidth: 2 * deltaWidth,
                                              dashPattern: [10 * deltaWidth , 2 * deltaWidth],
                                              child:  SizedBox(
                                                  width: 360 * deltaWidth,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      SizedBox(
                                                        width: 150 * deltaWidth,
                                                        height: 150 * deltaWidth,
                                                        child: Image.asset('assets/images/company1.png', filterQuality: FilterQuality.high),
                                                      ),
                                                      SizedBox(height: 15 * deltaWidth,),
                                                      Seo.text(text: 'Zherdesh.ru', child: Text(
                                                          'Zherdesh.ru', textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              fontFamily: 'TextFont',
                                                              fontSize: 32.0*deltaWidth,
                                                              fontWeight: FontWeight.w700,
                                                              color: Colors.black
                                                          )
                                                      ),)
                                                    ],
                                                  )
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                        ),
                      ),
                      SizedBox(height: 350 * deltaWidth,),

                      //footer
                      Container(
                        width: width,
                        height: 350 * deltaWidth,
                        color: const Color.fromRGBO(27, 27, 27, 1),
                        child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 1074 * deltaWidth,
                                  height: 2 * deltaWidth,
                                  color: const Color.fromRGBO(255, 255, 255, 0.3),
                                ),
                                SizedBox(
                                  width: 1074 * deltaWidth,
                                  height: 225 * deltaWidth,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 30 * deltaWidth),
                                        child: SizedBox(
                                          height: 55*deltaWidth,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Text("{" , textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'JustAnother',
                                                      fontSize: 42.0*deltaWidth,
                                                      fontWeight: FontWeight.bold,
                                                      color: colorCompany
                                                  )
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: FaIcon(FontAwesomeIcons.check, size: 32* deltaWidth, color:  colorCompany),
                                              ),
                                              Text("}" , textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'JustAnother',
                                                      fontSize: 42.0 * deltaWidth,
                                                      fontWeight: FontWeight.bold,
                                                      color: colorCompany
                                                  )
                                              ),
                                              const SizedBox(width: 5),
                                              Container(
                                                width: 3 * deltaWidth,
                                                height: 38*deltaWidth,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(5.0),
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Seo.text(text: "TEIT CORP", child: Text("TEIT CORP" , textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'CompanyFont',
                                                      fontSize: 32.0*deltaWidth,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white
                                                  )
                                              ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 30 * deltaWidth),
                                        child: SizedBox(
                                          height: 100 * deltaWidth,
                                          child: Column(
                                            children: [
                                              Seo.text(text: "Больше о нас", child: Text("Больше о нас" , textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontFamily: 'CompanyFont',
                                                      fontSize: 40.0*deltaWidth,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white
                                                  )
                                              )),
                                              SizedBox(height: 5 * deltaWidth,),
                                              Row(
                                                children: [
                                                  MouseRegion(
                                                    cursor:SystemMouseCursors.click,
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        _launchMailClient();
                                                      },
                                                      child: Row(
                                                        children: [
                                                          FaIcon(FontAwesomeIcons.solidEnvelope , size: 18* deltaWidth , color: Colors.white,),
                                                          SizedBox(width: 5 * deltaWidth,),
                                                          Seo.text(text: 'teitcorporation@gmail.com', child: Text(
                                                              'teitcorporation@gmail.com',
                                                              style: TextStyle(
                                                                  fontFamily: 'TextFont',
                                                                  fontSize: 14.0*deltaWidth,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: Colors.white
                                                              )
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(width: 20 * deltaWidth,),
                                                  MouseRegion(
                                                    cursor: SystemMouseCursors.click,
                                                    child: GestureDetector(
                                                      onTap: (){
                                                        _launchTelegramClient();
                                                      },
                                                      child: Row(
                                                        children: [
                                                          FaIcon(FontAwesomeIcons.solidPaperPlane , size: 18 * deltaWidth, color: Colors.white,),
                                                          SizedBox(width: 5 * deltaWidth,),
                                                          Seo.text(text: '@AyakaComeToHome', child: Text(
                                                              '@AyakaComeToHome',
                                                              style: TextStyle(
                                                                  fontFamily: 'TextFont',
                                                                  fontSize: 14.0*deltaWidth,
                                                                  fontWeight: FontWeight.w600,
                                                                  color: Colors.white
                                                              )
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                      )
                    ],
                  ),
                )
            )
        )
      );
    }
    else{
      return SeoController(
          enabled: true,
          tree: WidgetTree(context: context),
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                  width: width,
                  height: height,
                  color: const Color.fromRGBO(250, 250, 250, 1),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.zero,
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20* deltaWidthMobile,),
                        //start bar =>
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 370 * deltaWidthMobile,
                            height: 55 * deltaWidthMobile,
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 55*deltaWidthMobile,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Seo.text(text: "{", child: Text("{" , textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'JustAnother',
                                              fontSize: 28.0*deltaWidthMobile,
                                              fontWeight: FontWeight.bold,
                                              color: colorCompany
                                          )
                                      )),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: FaIcon(FontAwesomeIcons.check, size: 22* deltaWidthMobile, color:  colorCompany),
                                      ),
                                      Seo.text(text: "}", child: Text("}" , textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'JustAnother',
                                              fontSize: 28.0 * deltaWidthMobile,
                                              fontWeight: FontWeight.bold,
                                              color: colorCompany
                                          )
                                      )),
                                      const SizedBox(width: 5),
                                      Container(
                                        width: 2 * deltaWidthMobile,
                                        height: 22*deltaWidthMobile,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Seo.text(text: "TEIT CORP",  style: TextTagStyle.h1 ,child: Text("TEIT CORP" , textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'CompanyFont',
                                              fontSize: 22.0*deltaWidthMobile,
                                              fontWeight: FontWeight.bold
                                          )
                                      ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 45*deltaWidthMobile,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5*deltaWidthMobile),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          _showContactInfoMobile(context, deltaWidthMobile);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromRGBO(21, 126, 254, 1), // Button color
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0 * deltaWidthMobile), // Border radius here
                                          ),
                                        ),
                                        child: Seo.text(text: 'Связаться', child: Text(
                                            'Связаться',
                                            style: TextStyle(
                                                fontFamily: 'TextFont',
                                                fontSize: 16.0*deltaWidthMobile,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white
                                            )
                                        ),)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10 * deltaWidthMobile),
                        //development =>
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 370 * deltaWidthMobile,
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //left side
                                  SizedBox(
                                    width: 185 * deltaWidthMobile,
                                    height: 300 * deltaWidthMobile,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: 300 * deltaWidthMobile,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Seo.text(text: "Разработка приложений и веб сайтов", style : TextTagStyle.h2, child: Container()),
                                                SizedBox(
                                                    height: 21 * deltaWidthMobile,
                                                    child: Seo.text(text: 'Разработка', child: Text(
                                                        'Разработка', textAlign: TextAlign.start,
                                                        style: TextStyle(
                                                            fontFamily: 'TextFont',
                                                            fontSize: 16.0*deltaWidthMobile,
                                                            fontWeight: FontWeight.w700,
                                                            color: Colors.black
                                                        )
                                                    ),)
                                                ),
                                                SizedBox(
                                                    height: 24 * deltaWidthMobile ,
                                                    child: Seo.text(text: 'ПРИЛОЖЕНИЙ', child: Text(
                                                        'ПРИЛОЖЕНИЙ', textAlign: TextAlign.start,
                                                        style: TextStyle(
                                                            fontFamily: 'TextFont',
                                                            fontSize: 16.0*deltaWidthMobile,
                                                            fontWeight: FontWeight.w900,
                                                            color: Colors.black
                                                        )
                                                    ),)
                                                ),
                                                SizedBox(
                                                    height: 24 * deltaWidthMobile,
                                                    child: Seo.text(text: 'И ВЕБ САЙТОВ', child: Text(
                                                        'И ВЕБ САЙТОВ', textAlign: TextAlign.start,
                                                        style: TextStyle(
                                                            fontFamily: 'TextFont',
                                                            fontSize: 16.0*deltaWidthMobile,
                                                            fontWeight: FontWeight.w900,
                                                            color: Colors.black
                                                        )
                                                    ),)
                                                ),
                                                SizedBox(
                                                    height: 50 * deltaWidthMobile,
                                                    child: Seo.text(text: 'Создаем сайты которые подчеркнут вас и вашу компанию.', child: Text(
                                                        'Создаем сайты которые подчеркнут вас и вашу компанию.', textAlign: TextAlign.start,
                                                        style: TextStyle(
                                                            fontFamily: 'TextFont',
                                                            fontSize: 12.0*deltaWidthMobile,
                                                            fontWeight: FontWeight.w600,
                                                            color: const Color.fromRGBO(76, 76, 76, 1)
                                                        )
                                                    ),)
                                                ),
                                                SizedBox(
                                                  height: 40*deltaWidthMobile,
                                                  child: Padding(
                                                    padding: EdgeInsets.symmetric(vertical: 5* deltaWidthMobile),
                                                    child: ElevatedButton(
                                                        onPressed: () {
                                                          _showContactInfo(context, deltaWidthMobile);
                                                        },
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor: const Color.fromRGBO(21, 126, 254, 1), // Button color
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(8.0 * deltaWidthMobile), // Border radius here
                                                          ),
                                                        ),
                                                        child: Seo.text(text: 'Связаться', child: Text(
                                                            'Связаться',
                                                            style: TextStyle(
                                                                fontFamily: 'TextFont',
                                                                fontSize: 16.0*deltaWidthMobile,
                                                                fontWeight: FontWeight.w600,
                                                                color: Colors.white
                                                            )
                                                        ),)
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 185 * deltaWidthMobile,
                                    height: 300 * deltaWidthMobile,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset('assets/images/phoneHand.png', filterQuality: FilterQuality.high),
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                        SizedBox(height: 20 * deltaWidthMobile,),
                        //steps to develop
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 400 * deltaWidthMobile,
                              height: 260 * deltaWidthMobile,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 30 * deltaWidthMobile,
                                      child: Seo.text(text: 'Этапы разработки', child: Text(
                                          'Этапы разработки', textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'TextFont',
                                              fontSize: 24.0*deltaWidthMobile,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black
                                          )
                                      ),)
                                  ),
                                  SizedBox(
                                    height: 200 * deltaWidthMobile,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        DottedBorder(
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(10 * deltaWidthMobile),
                                            color: const Color.fromRGBO(255, 133, 0, 1),
                                            strokeWidth: 2,
                                            dashPattern: [10 * deltaWidthMobile , 2 * deltaWidthMobile],
                                            child:  SizedBox(
                                                width: 85 * deltaWidthMobile,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 24 * deltaWidthMobile,
                                                      backgroundColor: const Color.fromRGBO(255, 133, 0, 1),
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: FaIcon(FontAwesomeIcons.userGroup, size: 16 * deltaWidthMobile, color: const Color.fromRGBO(255, 211, 162, 1),),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10 * deltaWidthMobile,),
                                                    Seo.text(text: 'Командная\nвстреча', child: Text(
                                                        'Командная\nвстреча', textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily: 'TextFont',
                                                            fontSize: 12.0*deltaWidthMobile,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.black
                                                        )
                                                    ),)
                                                  ],
                                                )
                                            )
                                        ),
                                        DottedBorder(
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(10 * deltaWidthMobile),
                                            color: const Color.fromRGBO(33, 158, 188, 1),
                                            strokeWidth: 2,
                                            dashPattern: [10 * deltaWidthMobile , 2 * deltaWidthMobile],
                                            child:  SizedBox(
                                                width: 85 * deltaWidthMobile,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 24 * deltaWidthMobile,
                                                      backgroundColor: const Color.fromRGBO(33, 158, 188, 1),
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: FaIcon(FontAwesomeIcons.wandMagicSparkles, size: 16 * deltaWidthMobile, color: const Color.fromRGBO(115, 228, 255, 1)),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10 * deltaWidthMobile,),
                                                    Seo.text(text: 'Дизайн\nприложения', child: Text(
                                                        'Дизайн\nприложения', textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily: 'TextFont',
                                                            fontSize: 12.0*deltaWidthMobile,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.black
                                                        )
                                                    ),)
                                                  ],
                                                )
                                            )
                                        ),
                                        DottedBorder(
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(10 * deltaWidthMobile),
                                            color: const Color.fromRGBO(255, 183, 3, 1),
                                            strokeWidth: 2,
                                            dashPattern: [10 * deltaWidthMobile , 2 * deltaWidthMobile],
                                            child:  SizedBox(
                                                width: 85 * deltaWidthMobile,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 24 * deltaWidthMobile,
                                                      backgroundColor: const Color.fromRGBO(255, 183, 3, 1),
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: FaIcon(FontAwesomeIcons.code, size: 16 * deltaWidthMobile, color: const Color.fromRGBO(255, 220, 133, 1),),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10 * deltaWidthMobile,),
                                                    Seo.text(text: 'Написание \nкода', child:  Text(
                                                        'Написание\nкода', textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily: 'TextFont',
                                                            fontSize: 12.0*deltaWidthMobile,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.black
                                                        )
                                                    ),)
                                                  ],
                                                )
                                            )
                                        ),
                                        DottedBorder(
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(10 * deltaWidthMobile),
                                            color: const Color.fromRGBO(142, 202, 230, 1),
                                            strokeWidth: 2,
                                            dashPattern: [10 * deltaWidthMobile , 2 * deltaWidthMobile],
                                            child:  SizedBox(
                                                width: 85 * deltaWidthMobile,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 24 * deltaWidthMobile,
                                                      backgroundColor: const Color.fromRGBO(142, 202, 230, 1),
                                                      child: Align(
                                                        alignment: Alignment.center,
                                                        child: FaIcon(FontAwesomeIcons.rocket, size: 16 * deltaWidthMobile, color: const Color.fromRGBO(176, 230, 255, 1),),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10 * deltaWidthMobile,),
                                                    Seo.text(text: 'Запуск\nприложения', child: Text(
                                                        'Запуск\nприложения', textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            fontFamily: 'TextFont',
                                                            fontSize: 12.0*deltaWidthMobile,
                                                            fontWeight: FontWeight.w600,
                                                            color: Colors.black
                                                        )
                                                    ),)
                                                  ],
                                                )
                                            )
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                          ),
                        ),
                        SizedBox(height: 40 * deltaWidthMobile,),
                        //intro 1st
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 370 * deltaWidthMobile,
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //left side
                                  SizedBox(
                                    width: 170 * deltaWidthMobile,
                                    height: 300 * deltaWidthMobile,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset('assets/images/illustration2.png', filterQuality: FilterQuality.high, fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(width: 15 * deltaWidthMobile,),
                                  //right side
                                  SizedBox(
                                      width: 185 * deltaWidthMobile,
                                      height: 300 * deltaWidthMobile,
                                      child: SizedBox(
                                          height: 267 * deltaWidthMobile,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  height: 35 * deltaWidthMobile,
                                                  child: Seo.text(text: 'Не знаете с чего начать?', child: Text(
                                                      'Не знаете с чего начать?', textAlign: TextAlign.end,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 16.0*deltaWidthMobile,
                                                          height: 0.94,
                                                          fontWeight: FontWeight.w800,
                                                          color: Colors.black
                                                      )
                                                  ),)
                                              ),
                                              SizedBox(height: 5*deltaWidthMobile,),
                                              SizedBox(
                                                  height: 180 * deltaWidthMobile,
                                                  child: Seo.text(text: 'Мы разработаем приложение/веб-сайт с нуля. Интуитивно понятный интерфейс с современным дизайном. Наши сервера надежно защищены, а решения красивы', child: Text(
                                                      'Мы разработаем приложение/веб-сайт с нуля. Интуитивно понятный интерфейс с современным дизайном. Наши сервера надежно защищены, а решения красивы',
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 14.0*deltaWidthMobile,
                                                          height: 1.3,
                                                          fontWeight: FontWeight.w600,
                                                          color: const Color.fromRGBO(76, 76, 76, 1)
                                                      )
                                                  ),)
                                              ),
                                            ],
                                          )
                                      )
                                  ),
                                ],
                              )
                          ),
                        ),
                        SizedBox(height: 40 * deltaWidthMobile,),
                        //intro 2nd
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 370 * deltaWidthMobile,
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //left side
                                  SizedBox(
                                      width: 185 * deltaWidthMobile,
                                      height: 300 * deltaWidthMobile,
                                      child: SizedBox(
                                          height: 267 * deltaWidthMobile,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  height: 35 * deltaWidthMobile,
                                                  child: Seo.text(text: 'Обратная связь 24/7', child: Text(
                                                      'Обратная связь 24/7', textAlign: TextAlign.start,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 16.0*deltaWidthMobile,
                                                          height: 0.94,
                                                          fontWeight: FontWeight.w800,
                                                          color: Colors.black
                                                      )
                                                  ),)
                                              ),
                                              SizedBox(height: 5*deltaWidthMobile,),
                                              SizedBox(
                                                  height: 180 * deltaWidthMobile,
                                                  child: Seo.text(text: 'Мы стремимся к превосходному обслуживанию наших клиентов и ценим ваше мнение. Мы всегда готовы выслушать ваши комментарии.', child: Text(
                                                      'Мы стремимся к превосходному обслуживанию наших клиентов и ценим ваше мнение. Мы всегда готовы выслушать ваши комментарии.',
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 14.0*deltaWidthMobile,
                                                          height: 1.3,
                                                          fontWeight: FontWeight.w600,
                                                          color: const Color.fromRGBO(76, 76, 76, 1)
                                                      )
                                                  ),)
                                              ),
                                            ],
                                          )
                                      )
                                  ),
                                  SizedBox(width: 15 * deltaWidthMobile,),
                                  //right side
                                  SizedBox(
                                    width: 170 * deltaWidthMobile,
                                    height: 300 * deltaWidthMobile,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset('assets/images/illustration3.png', filterQuality: FilterQuality.high, fit: BoxFit.cover,),
                                    ),
                                  ),
                                ],
                              )
                          ),
                        ),
                        SizedBox(height: 40 * deltaWidthMobile,),

                        //intro 3rd
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 370 * deltaWidthMobile,
                              color: Colors.transparent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //left side
                                  SizedBox(
                                    width: 170 * deltaWidthMobile,
                                    height: 300 * deltaWidthMobile,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset('assets/images/illustration4.png', filterQuality: FilterQuality.high, fit: BoxFit.cover,),
                                    ),
                                  ),
                                  SizedBox(width: 15 * deltaWidthMobile,),
                                  //right side
                                  SizedBox(
                                      width: 185 * deltaWidthMobile,
                                      height: 300 * deltaWidthMobile,
                                      child: SizedBox(
                                          height: 267 * deltaWidthMobile,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  height: 35 * deltaWidthMobile,
                                                  child: Seo.text(text: 'Задачи и решения', child: Text(
                                                      'Задачи и решения', textAlign: TextAlign.end,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 16.0*deltaWidthMobile,
                                                          height: 0.94,
                                                          fontWeight: FontWeight.w800,
                                                          color: Colors.black
                                                      )
                                                  ),)
                                              ),
                                              SizedBox(height: 5*deltaWidthMobile,),
                                              SizedBox(
                                                  height: 180 * deltaWidthMobile,
                                                  child: Seo.text(text: 'Мы готовы решать ваши задачи, независимо от их сложности и масштаба. Обратитесь к нам сегодня, и мы поможем вам достичь ваших целей!', child: Text(
                                                      'Мы готовы решать ваши задачи, независимо от их сложности и масштаба. Обратитесь к нам сегодня, и мы поможем вам достичь ваших целей!',
                                                      textAlign: TextAlign.end,
                                                      style: TextStyle(
                                                          fontFamily: 'TextFont',
                                                          fontSize: 14.0*deltaWidthMobile,
                                                          height: 1.3,
                                                          fontWeight: FontWeight.w600,
                                                          color: const Color.fromRGBO(76, 76, 76, 1)
                                                      )
                                                  ),)
                                              ),
                                            ],
                                          )
                                      )
                                  ),
                                ],
                              )
                          ),
                        ),
                        SizedBox(height: 40 * deltaWidthMobile,),

                        //rounded rectangles =>
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 400 * deltaWidthMobile,
                              color: Colors.transparent,
                              child: Align(
                                alignment: Alignment.center,
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 190 * deltaWidthMobile,
                                          height: 110 * deltaWidthMobile,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2.0,
                                            ),
                                            borderRadius: BorderRadius.circular(15.0 * deltaWidthMobile),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(width: 10 * deltaWidthMobile,),
                                              SizedBox(
                                                width: 40 * deltaWidthMobile,
                                                height: 40 * deltaWidthMobile,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Image.asset('assets/images/data2.png', filterQuality: FilterQuality.high, fit: BoxFit.contain,),
                                                ),
                                              ),
                                              SizedBox(width: 9.5 * deltaWidthMobile,),
                                              SizedBox(
                                                  width: 120 * deltaWidthMobile,
                                                  height: 110 * deltaWidthMobile,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          height: 30 * deltaWidthMobile,
                                                          child: Align(
                                                              alignment: Alignment.centerLeft,
                                                              child: Seo.text(text: 'Дизайн \nинтерфейса', child: Text(
                                                                  'Дизайн \nинтерфейса', textAlign: TextAlign.start,
                                                                  maxLines: 2,
                                                                  style: TextStyle(
                                                                      fontFamily: 'TextFont',
                                                                      fontSize: 14.0*deltaWidthMobile,
                                                                      height: 1,
                                                                      fontWeight: FontWeight.w700,
                                                                      color: Colors.black
                                                                  )
                                                              ),)
                                                          )
                                                      ),
                                                      SizedBox(
                                                        height: 65 * deltaWidthMobile,
                                                        child: Align(
                                                            alignment: Alignment.centerLeft,
                                                            child: Seo.text(text: 'Создаем привлекательный\nи понятный интерфейс', child: Text(
                                                                'Создаем привлека-\nтельный и понятный интерфейс',
                                                                textAlign: TextAlign.start,
                                                                style: TextStyle(
                                                                    fontFamily: 'TextFont',
                                                                    fontSize: 12.0*deltaWidthMobile,
                                                                    height: 1,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.black
                                                                )
                                                            ),)
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left:  15 * deltaWidthMobile,
                                              bottom: 18 * deltaWidthMobile
                                          ),
                                          child: Container(
                                            width: 195 * deltaWidthMobile,
                                            height: 110 * deltaWidthMobile,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(27, 27, 27, 1),
                                              borderRadius: BorderRadius.circular(15.0 * deltaWidthMobile),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(width: 10 * deltaWidthMobile,),
                                                SizedBox(
                                                  width: 40 * deltaWidthMobile,
                                                  height: 40 * deltaWidthMobile,
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Image.asset('assets/images/data1.png', filterQuality: FilterQuality.high, fit: BoxFit.contain,),
                                                  ),
                                                ),
                                                SizedBox(width: 9.5 * deltaWidthMobile,),
                                                SizedBox(
                                                    width: 120 * deltaWidthMobile,
                                                    height: 110 * deltaWidthMobile,
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(
                                                            height: 30 * deltaWidthMobile,
                                                            child: Align(
                                                                alignment: Alignment.centerLeft,
                                                                child: Seo.text(text: 'Разработка и\nпрограммирование', child: Text(
                                                                    'Разработка и программирование', textAlign: TextAlign.start,
                                                                    maxLines: 2,
                                                                    style: TextStyle(
                                                                        fontFamily: 'TextFont',
                                                                        fontSize: 10.0*deltaWidthMobile,
                                                                        height: 1,
                                                                        fontWeight: FontWeight.w700,
                                                                        color: Colors.white
                                                                    )
                                                                ),)
                                                            )
                                                        ),
                                                        SizedBox(
                                                          height: 60 * deltaWidthMobile,
                                                          child: Align(
                                                              alignment: Alignment.centerLeft,
                                                              child: Seo.text(text: 'Разработчики решат проблему\nлюбой сложности', child: Text(
                                                                  'Разработчики решат проблему\nлюбой сложности',
                                                                  textAlign: TextAlign.start,
                                                                  style: TextStyle(
                                                                      fontFamily: 'TextFont',
                                                                      fontSize: 12.0*deltaWidthMobile,
                                                                      height: 1,
                                                                      fontWeight: FontWeight.w600,
                                                                      color: Colors.white
                                                                  )
                                                              ),)
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 5 * deltaWidthMobile,
                                              top: 21 * deltaWidthMobile
                                          ),
                                          child: Container(
                                            width: 190 * deltaWidthMobile,
                                            height: 110 * deltaWidthMobile,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(27, 27, 27, 1),
                                              borderRadius: BorderRadius.circular(15.0 * deltaWidthMobile),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(width: 10 * deltaWidthMobile,),
                                                SizedBox(
                                                  width: 40 * deltaWidthMobile,
                                                  height: 40 * deltaWidthMobile,
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Image.asset('assets/images/data4.png', filterQuality: FilterQuality.high, fit: BoxFit.contain,),
                                                  ),
                                                ),
                                                SizedBox(width: 9.5 * deltaWidthMobile,),
                                                SizedBox(
                                                    width: 120 * deltaWidthMobile,
                                                    height: 110 * deltaWidthMobile,
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(
                                                            height: 30 * deltaWidthMobile,
                                                            child: Align(
                                                                alignment: Alignment.centerLeft,
                                                                child: Seo.text(text: 'Тестирование \nи отладка', child: Text(
                                                                    'Тестирование и отладка', textAlign: TextAlign.start,
                                                                    maxLines: 2,
                                                                    style: TextStyle(
                                                                        fontFamily: 'TextFont',
                                                                        fontSize: 12.0*deltaWidthMobile,
                                                                        height: 1,
                                                                        fontWeight: FontWeight.w700,
                                                                        color: Colors.white
                                                                    )
                                                                ),)
                                                            )
                                                        ),
                                                        SizedBox(
                                                          height: 65 * deltaWidthMobile,
                                                          child: Align(
                                                              alignment: Alignment.centerLeft,
                                                              child: Seo.text(text: 'Проводим тщательное\nтестирование продуктов', child: Text(
                                                                  'Проводим тщательное\nтестирование продуктов',
                                                                  textAlign: TextAlign.start,
                                                                  style: TextStyle(
                                                                      fontFamily: 'TextFont',
                                                                      fontSize: 12.0*deltaWidthMobile,
                                                                      height: 1,
                                                                      fontWeight: FontWeight.w600,
                                                                      color: Colors.white
                                                                  )
                                                              ),)
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 15 * deltaWidthMobile
                                          ),
                                          child: Container(
                                            width: 190 * deltaWidthMobile,
                                            height: 110 * deltaWidthMobile,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(21, 126, 254, 1),
                                              borderRadius: BorderRadius.circular(15.0 * deltaWidthMobile),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(width: 10 * deltaWidthMobile,),
                                                SizedBox(
                                                  width: 40 * deltaWidthMobile,
                                                  height: 40 * deltaWidthMobile,
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Image.asset('assets/images/data3.png', filterQuality: FilterQuality.high, fit: BoxFit.contain,),
                                                  ),
                                                ),
                                                SizedBox(width: 9.5 * deltaWidthMobile,),
                                                SizedBox(
                                                    width: 120 * deltaWidthMobile,
                                                    height: 110 * deltaWidthMobile,
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        SizedBox(
                                                            height: 30 * deltaWidthMobile,
                                                            child: Align(
                                                                alignment: Alignment.centerLeft,
                                                                child: Seo.text(text: 'Планирование \nи анализ', child: Text(
                                                                    'Планирование и анализ', textAlign: TextAlign.start,
                                                                    maxLines: 2,
                                                                    style: TextStyle(
                                                                        fontFamily: 'TextFont',
                                                                        fontSize: 10.0*deltaWidthMobile,
                                                                        height: 1,
                                                                        fontWeight: FontWeight.w700,
                                                                        color: Colors.white
                                                                    )
                                                                ),)
                                                            )
                                                        ),
                                                        SizedBox(
                                                          height: 50 * deltaWidthMobile,
                                                          child: Align(
                                                              alignment: Alignment.centerLeft,
                                                              child: Seo.text(text: 'Предложим лучшее решение\nдля вашего бизнеса', child: Text(
                                                                  'Предложим лучшее решение\nдля вашего бизнеса',
                                                                  textAlign: TextAlign.start,
                                                                  style: TextStyle(
                                                                      fontFamily: 'TextFont',
                                                                      fontSize: 12.0*deltaWidthMobile,
                                                                      height: 1,
                                                                      fontWeight: FontWeight.w600,
                                                                      color: Colors.white
                                                                  )
                                                              ),)
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                          ),
                        ),
                        SizedBox(height: 40 * deltaWidthMobile,),

                        //Our projects
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 370 * deltaWidthMobile,
                              height: 250 * deltaWidthMobile,
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 24 * deltaWidthMobile,
                                      child: Seo.text(text: 'Наши проекты', child: Text(
                                          'Наши проекты', textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'TextFont',
                                              fontSize: 16.0*deltaWidthMobile,
                                              height: 0.94,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black
                                          )
                                      ),)
                                  ),
                                  MouseRegion(
                                    cursor:SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: (){
                                        Uri uri = Uri.parse("https://zherdesh.ru/");
                                        _launchURL(uri);
                                      },
                                      child: SizedBox(
                                        height: 200 * deltaWidthMobile,
                                        width: 144 * deltaWidthMobile,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            DottedBorder(
                                                borderType: BorderType.RRect,
                                                radius: Radius.circular(15 * deltaWidthMobile),
                                                color: const Color.fromRGBO(77, 170, 232, 1),
                                                strokeWidth: 2 * deltaWidthMobile,
                                                dashPattern: [10 * deltaWidthMobile , 2 * deltaWidthMobile],
                                                child:  SizedBox(
                                                    width: 135 * deltaWidthMobile,
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        SizedBox(
                                                          width: 60 * deltaWidthMobile,
                                                          height: 60 * deltaWidthMobile,
                                                          child: Image.asset('assets/images/company1.png', filterQuality: FilterQuality.high),
                                                        ),
                                                        SizedBox(height: 15 * deltaWidthMobile,),
                                                        Seo.text(text: 'Zherdesh.ru', child: Text(
                                                            'Zherdesh.ru', textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                fontFamily: 'TextFont',
                                                                fontSize: 18.0*deltaWidthMobile,
                                                                fontWeight: FontWeight.w700,
                                                                color: Colors.black
                                                            )
                                                        ),)
                                                      ],
                                                    )
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                          ),
                        ),
                        SizedBox(height: 40 * deltaWidthMobile,),

                        //footer
                        Container(
                          width: width,
                          height: 150 * deltaWidthMobile,
                          color: const Color.fromRGBO(27, 27, 27, 1),
                          child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 410 * deltaWidthMobile,
                                    height: 2 * deltaWidthMobile,
                                    color: const Color.fromRGBO(255, 255, 255, 0.3),
                                  ),
                                  SizedBox(
                                    width: 410 * deltaWidthMobile,
                                    height: 130 * deltaWidthMobile,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 10 * deltaWidthMobile, top: 30 * deltaWidthMobile),
                                          child: SizedBox(
                                            height: 55*deltaWidthMobile,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("{" , textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'JustAnother',
                                                        fontSize: 14.0*deltaWidthMobile,
                                                        fontWeight: FontWeight.bold,
                                                        color: colorCompany
                                                    )
                                                ),
                                                Align(
                                                  alignment: Alignment.centerLeft,
                                                  child: FaIcon(FontAwesomeIcons.check, size: 12* deltaWidthMobile, color:  colorCompany),
                                                ),
                                                Text("}" , textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'JustAnother',
                                                        fontSize: 14.0 * deltaWidthMobile,
                                                        fontWeight: FontWeight.bold,
                                                        color: colorCompany
                                                    )
                                                ),
                                                const SizedBox(width: 2),
                                                Container(
                                                  width: 2 * deltaWidthMobile,
                                                  height: 14*deltaWidthMobile,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(5.0),
                                                  ),
                                                ),
                                                const SizedBox(width: 5),
                                                Seo.text(text: "TEIT CORP", child: Text("TEIT CORP" , textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'CompanyFont',
                                                        fontSize: 14.0*deltaWidthMobile,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white
                                                    )
                                                ))
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 15 * deltaWidthMobile, top: 20 * deltaWidthMobile),
                                          child: SizedBox(
                                            height: 100 * deltaWidthMobile,
                                            child: Column(
                                              children: [
                                                Seo.text(text: "Больше о нас", child: Text("Больше о нас" , textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'CompanyFont',
                                                        fontSize: 10.0*deltaWidthMobile,
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.white
                                                    )
                                                )),
                                                SizedBox(height: 5 * deltaWidthMobile,),
                                                Column(
                                                  children: [
                                                    MouseRegion(
                                                      cursor:SystemMouseCursors.click,
                                                      child: GestureDetector(
                                                        onTap: (){
                                                          _launchMailClient();
                                                        },
                                                        child: Row(
                                                          children: [
                                                            FaIcon(FontAwesomeIcons.solidEnvelope , size: 12* deltaWidthMobile , color: Colors.white,),
                                                            SizedBox(width: 3 * deltaWidthMobile,),
                                                            Seo.text(text: 'teitcorporation@gmail.com', child: Text(
                                                                'teitcorporation@gmail.com',
                                                                style: TextStyle(
                                                                    fontFamily: 'TextFont',
                                                                    fontSize: 12.0*deltaWidthMobile,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.white
                                                                )
                                                            ),)
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 20 * deltaWidthMobile,),
                                                    MouseRegion(
                                                      cursor: SystemMouseCursors.click,
                                                      child: GestureDetector(
                                                        onTap: (){
                                                          _launchTelegramClient();
                                                        },
                                                        child: Row(
                                                          children: [
                                                            FaIcon(FontAwesomeIcons.solidPaperPlane , size: 12 * deltaWidthMobile, color: Colors.white,),
                                                            SizedBox(width: 3 * deltaWidthMobile,),
                                                            Seo.text(text: '@AyakaComeToHome', child: Text(
                                                                '@AyakaComeToHome',
                                                                style: TextStyle(
                                                                    fontFamily: 'TextFont',
                                                                    fontSize: 12.0*deltaWidthMobile,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.white
                                                                )
                                                            ),)
                                                          ],
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                          ),
                        )
                      ],
                    ),
                  )
              )
          )
      );
    }
  }
}