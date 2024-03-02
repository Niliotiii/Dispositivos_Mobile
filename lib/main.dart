import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

void main() {
  runApp(Aula2());
}

class Aula2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Morro Chico Mendes',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 11, 69, 13),
          ),
          body: Column(
            children: [
              Container(
                child: Image.network(
                  'https://www.caaro.org.br/gerenciador/data/uploads/2021/01/1-LUGAR-39-VALERIAPATRICIADOSSANTOSMAIA-MORRO-CHICO-MENDES-VISTA-PANORAMICA-DE-OURO-PRETO-scaled.jpg',
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Brasil',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          Text('Ouro Preto do Oeste - RO',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.blue,
                            size: 30,
                          ),
                          SizedBox(width: 5),
                          Text('3.500',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                              textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 110,
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.facebook,
                                color: Colors.blue,
                              ),
                              iconSize: 30,
                              onPressed: () async {
                                const url = 'https://www.facebook.com/';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                            Text('facebook',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      Container(
                        width: 110,
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.map,
                                color: Colors.blue,
                              ),
                              iconSize: 30,
                              onPressed: () async {
                                const url =
                                    'https://maps.app.goo.gl/2vwNnkiXVf24V3AL7';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                            ),
                            Text('endereço',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                      Container(
                        width: 110,
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.share,
                                color: Colors.blue,
                              ),
                              iconSize: 30,
                              onPressed: () {
                                Share.share(
                                    'Compartilhe: https://morro_chico_mendes.com');
                              },
                            ),
                            Text('compartilhar',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal),
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ]),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Text(
                    'O Morro Chico Mendes é um dos pontos turísticos mais visitados de Rio Branco, capital do Acre. O local é uma homenagem ao líder seringueiro Chico Mendes, que lutou pela preservação da floresta amazônica e dos direitos dos trabalhadores rurais. O morro é um dos pontos mais altos da cidade e oferece uma vista panorâmica de Rio Branco.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify),
              ),
            ],
          )),
    );
  }
}
