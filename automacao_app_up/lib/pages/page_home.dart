import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

String icon_on = 'images/lamp_on.png';
String icon_off = 'images/lamp_off.png';

class _HomeState extends State<Home> {
  final BTN_1_nome = 'sala';
  String BTN_1_status = icon_on;
  final BTN_2_nome = 'quarto';
  String BTN_2_status = 'images/lamp_on.png';
  final BTN_3_nome = 'patio';
  String BTN_3_status = 'images/lamp_on.png';
  final BTN_4_nome = 'corredor';
  String BTN_4_status = 'images/lamp_on.png';
  @override
  Widget build(BuildContext context) {
    final telaAltura = MediaQuery.of(context).size.height;
    final telaLargura = MediaQuery.of(context).size.width;
    final alturaDoWidget = telaAltura * 0.35;

    //bool status_lamp_bool = true;

    status_lamp(btn_status) {
      return Container(
          //color: Colors.yellow,
          alignment: Alignment.center,
          height: ((alturaDoWidget / 2) - 20) / 2,
          child: Image(
            image: AssetImage(btn_status),
          ));
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black,
                Colors.black,
                Color(0xffFF0909).withOpacity(0.58),
              ])),
          child: SafeArea(
            child: Column(children: [
              //===================================================================
              //              Logo ==> icons
              //===================================================================
              Container(
                margin: EdgeInsets.only(top: telaAltura * 0),
                //color: Colors.blue,
                height: telaAltura * 0.15,
                child: Row(children: [
                  Container(
                    //margin: EdgeInsets.only(left: telaLargura * 0.05),
                    width: telaLargura * 0.4,
                    //color: Colors.red,
                    child: Image(image: AssetImage('images/icon_app.png')),
                  ),
                  Container(
                    width: telaLargura * 0.5,
                    //color: Colors.yellow,
                    child: AutoSizeText(
                      'Casa Inteligente',
                      minFontSize: 18,
                      maxLines: 1,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 25),
                    ),
                  )
                ]),
              ),
              //===================================================================
              //              Cards ==> 'Banners'
              //===================================================================
              Container(
                margin: EdgeInsets.only(top: (telaAltura * 0.08)),
                height: telaAltura * 0.2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Row(children: [
                    Container(
                      alignment: Alignment(0, -0.2),
                      width: (telaLargura * 0.6) - 5,
                      //color: Colors.red,
                      child: AutoSizeText(
                        'Bom diaa !!\nSeja Bem vindo',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic),
                        minFontSize: 25,
                      ),
                    ),
                    Container(
                      width: (telaLargura * 0.4) - 5,
                      //color: Colors.yellow,
                      child: Image(image: AssetImage('images/icon_sol.png')),
                    )
                  ]),
                ),
              ),
              //===================================================================
              //              widget ==> buttons
              //===================================================================
              //============================================
              //        Card Button 1
              //============================================
              Container(
                margin: EdgeInsets.only(top: telaAltura * 0.02),
                //color: Colors.white,
                height: alturaDoWidget / 2,
                child: Row(children: [
                  //============================================
                  //        Card Button 1
                  //============================================
                  InkWell(
                    onTap: () {
                      switch (BTN_1_status) {
                        case 'images/lamp_on.png':
                          setState(() {
                            BTN_1_status = icon_off;
                          });
                          break;
                        case 'images/lamp_off.png':
                          setState(() {
                            BTN_1_status = icon_on;
                          });
                          break;
                        default:
                      }

                      //if (BTN_1_status == icon_off) BTN_1_status = icon_on;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: EdgeInsets.all(10),
                      width: (telaLargura / 2) - 20,
                      child: Column(
                        children: [
                          Container(
                            //color: Colors.yellow,
                            alignment: Alignment.center,
                            height: ((alturaDoWidget / 2) - 20) / 2,
                            child: Text(BTN_1_nome),
                          ),
                          status_lamp(BTN_1_status),
                        ],
                      ),
                    ),
                  ),
                  //============================================
                  //        Card Button 2
                  //============================================
                  InkWell(
                    onTap: () {
                      switch (BTN_2_status) {
                        case 'images/lamp_on.png':
                          setState(() {
                            BTN_2_status = icon_off;
                          });
                          break;
                        case 'images/lamp_off.png':
                          setState(() {
                            BTN_2_status = icon_on;
                          });
                          break;
                        default:
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: EdgeInsets.all(10),
                      width: (telaLargura / 2) - 20,
                      child: Column(
                        children: [
                          Container(
                            //color: Colors.yellow,
                            alignment: Alignment.center,
                            height: ((alturaDoWidget / 2) - 20) / 2,
                            child: Text(BTN_2_nome),
                          ),
                          status_lamp(BTN_2_status),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              //============================================
              //        Card Linha 2
              //
              //============================================
              Container(
                margin: EdgeInsets.only(top: (telaAltura * 0.05) / 2),
                //color: Colors.white,
                height: alturaDoWidget / 2,
                child: Row(children: [
                  //============================================
                  //        Card Button 3
                  //============================================
                  InkWell(
                    onTap: () {
                      switch (BTN_3_status) {
                        case 'images/lamp_on.png':
                          setState(() {
                            BTN_3_status = icon_off;
                          });
                          break;
                        case 'images/lamp_off.png':
                          setState(() {
                            BTN_3_status = icon_on;
                          });
                          break;
                        default:
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: EdgeInsets.all(10),
                      width: (telaLargura / 2) - 20,
                      child: Column(
                        children: [
                          Container(
                            //color: Colors.yellow,
                            alignment: Alignment.center,
                            height: ((alturaDoWidget / 2) - 20) / 2,
                            child: Text(BTN_3_nome),
                          ),
                          status_lamp(BTN_3_status),
                        ],
                      ),
                    ),
                  ),
                  //============================================
                  //        Card Button 4
                  //============================================
                  InkWell(
                    onTap: () {
                      switch (BTN_4_status) {
                        case 'images/lamp_on.png':
                          setState(() {
                            BTN_4_status = icon_off;
                          });
                          break;
                        case 'images/lamp_off.png':
                          setState(() {
                            BTN_4_status = icon_on;
                          });
                          break;
                        default:
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: EdgeInsets.all(10),
                      width: (telaLargura / 2) - 20,
                      child: Column(
                        children: [
                          Container(
                            //color: Colors.yellow,
                            alignment: Alignment.center,
                            height: ((alturaDoWidget / 2) - 20) / 2,
                            child: Text(BTN_4_nome),
                          ),
                          status_lamp(BTN_4_status),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              //===================================================================
              //              Text
              //===================================================================
              Container(
                margin: EdgeInsets.only(top: telaAltura * 0.01),
                //color: Colors.white,
                height: telaAltura * 0.07,
                alignment: Alignment.center,
                child: AutoSizeText(
                  'Sua casa, seu conforto',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              )
            ]),
          )),
    );
  }
}
