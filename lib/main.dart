import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:intl/intl.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
    this.title
  }): super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State < MyHomePage > {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  static const double widthCard=120;
  static const double heigthCard=120;
  static const double paddingCard=1.0;
  static const double margingCard=1.0;
  static const double paddingContainerCard=1.0;
  static const double margingContainerCard=1.0;
  static const double iconCardSize=64;
  static const double iconCardPadding=10;
  static const double cardElevation=10.0;
  static const double paddingLabelTabBar=10.0;
  Color corIconeNaoSelecionado = Colors.blueAccent.withOpacity(0.5);
  Color corIconeSelecionado = Colors.blueAccent;

  static double value = double.parse("150.00");
  static var  formatter = new NumberFormat("#,##0.00", "pt_BR");
  String newText = "R\$ " + formatter.format(value);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(Icons.verified_user, color: Colors.limeAccent, ),
          title: Text('Meu Banco Digital', style: TextStyle(fontSize: 24.0), ),

          actions: < Widget > [
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
            ),
          ],
        ),
        body: TabBarView(
          children: < Widget > [
            Container(
              child: Container(child: Card(
                margin: const EdgeInsets.all(48),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(LineAwesomeIcons.money,color: Colors.grey,),
                        Text('Banco Digital Conta'),
                        Icon(Icons.remove_red_eye,color: Colors.grey,),
                      ],
                    ),),                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text('Saldo disponivel'),
                    Text(newText),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Text(''),
                    Container(height:77 ,color: Colors.grey,child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.credit_card),
                        Text('Compra em Mercado \n de '+newText + ' debito hoje'),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),),
                  ],
                ),
                elevation: 5.0,
              )
            ),),
            Container(
              child: Center(
                child: Text('Tab 2'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 3'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 4'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 5'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 6'),
              ),
            ),
            Container(
              child: Center(
                child: Text('Tab 7'),
              ),
            ),
          ],
        ),
        bottomNavigationBar:
        Container(child: TabBar(
            labelColor: corIconeSelecionado,
            isScrollable: true,
            unselectedLabelColor: corIconeNaoSelecionado,
            indicatorColor: Colors.blueAccent,
            labelPadding: const EdgeInsets.all(paddingLabelTabBar),
            tabs: [
              Container(
                width: widthCard,
                height: heigthCard,
                padding: const EdgeInsets.all(paddingContainerCard),
                child:
                Card(semanticContainer: true,
                  margin: const EdgeInsets.all(margingCard),
                  elevation: cardElevation,
                  child:Column(children:<Widget>[

                  Card(margin: const EdgeInsets.only(top: iconCardPadding),),
                  Icon(Icons.group_add,  size: iconCardSize, ),
                  Card(margin: const EdgeInsets.only(bottom: iconCardPadding),),

                  Text('Indicar amigos'),
                    Card(margin: const EdgeInsets.only(top: iconCardPadding/2),),
                  ]
                  ),),

              ),
              Container(
                width: widthCard,
                height: heigthCard,
                padding: const EdgeInsets.all(paddingContainerCard),
                child:
                Card(
                  margin: const EdgeInsets.all(margingCard),
                  elevation: cardElevation,
                  child:Container(child:Column(children:<Widget>[
                    Card(margin: const EdgeInsets.only(top: iconCardPadding),),
                    Icon(Icons.smartphone,  size: iconCardSize, ),
                    Card(margin: const EdgeInsets.only(bottom: iconCardPadding),),

                    Text('Recarga'),
                    Card(margin: const EdgeInsets.only(top: iconCardPadding/2),),
                  ]
                  ),),
                ),
              ),
              Container(
                width: widthCard,
                height: heigthCard,
                padding: const EdgeInsets.all(paddingContainerCard),
                child:
                Card(
                  margin: const EdgeInsets.all(margingCard),
                  elevation: cardElevation,
                  child:Container(child:Column(children:<Widget>[
                    Card(margin: const EdgeInsets.only(top: iconCardPadding),),
                    Icon(Icons.attach_money, size: iconCardSize, ),
                    Card(margin: const EdgeInsets.only(bottom: iconCardPadding),),

                    Text('Cobrar'),
                    Card(margin: const EdgeInsets.only(top: iconCardPadding/2),),
                  ]
                  ),),
                ),
              ),
              Container(
                width: widthCard,
                height: heigthCard,
                padding: const EdgeInsets.all(paddingContainerCard),
                child:
                Card(
                  margin: const EdgeInsets.all(margingCard),
                  elevation: cardElevation,
                  child:Container(child:Column(children:<Widget>[
                    Card(margin: const EdgeInsets.only(top: iconCardPadding*2),),
                    Icon(LineAwesomeIcons.cart_arrow_down, size: iconCardSize, ),
                    Card(margin: const EdgeInsets.only(bottom: iconCardPadding),),

                    Text('Depositar'),
                    Card(margin: const EdgeInsets.only(top: iconCardPadding/2),),
                  ]
                  ),),
                ),
              ),
              Container(
                width: widthCard,
                height: heigthCard,
                padding: const EdgeInsets.all(paddingContainerCard),
                child:
                Card(
                  margin: const EdgeInsets.all(margingCard),
                  elevation: cardElevation,
                  child:Container(child:Column(children:<Widget>[
                    Card(margin: const EdgeInsets.only(top: iconCardPadding*2),),
                    Icon(Icons.import_export,  size: iconCardSize, ),
                    Card(margin: const EdgeInsets.only(bottom: iconCardPadding),),

                    Text('Transferir'),
                    Card(margin: const EdgeInsets.only(top: iconCardPadding/2),),
                  ]
                  ),),
                ),
              ),
              Container(
                width: widthCard,
                height: heigthCard,
                padding: const EdgeInsets.all(paddingContainerCard),
                child:
                Card(
                  margin: const EdgeInsets.all(margingCard),
                  elevation: cardElevation,
                  child:Container(child:Column(children:<Widget>[
                    Card(margin: const EdgeInsets.only(top: iconCardPadding*2),),
                    Icon(LineAwesomeIcons.shopping_cart,  size: iconCardSize, ),
                    Card(margin: const EdgeInsets.only(bottom: iconCardPadding),),

                    Text('Pagar'),
                    Card(margin: const EdgeInsets.only(top: iconCardPadding/2),),
                  ]
                  ),),
                ),
              ),
              Container(
                width: widthCard,
                height: heigthCard,
                padding: const EdgeInsets.all(paddingContainerCard),
                child:
                Card(
                  margin: const EdgeInsets.all(margingCard),
                  elevation: cardElevation,
                  child:Container(child:Column(children:<Widget>[
                    Card(margin: const EdgeInsets.only(top: iconCardPadding*2),),
                    Icon(EvaIcons.messageCircle,  size: iconCardSize, ),
                    //Icon(LineAwesomeIcons.,  size: iconCardSize, ),
                    Card(margin: const EdgeInsets.only(bottom: iconCardPadding),),

                    Text('Ajuda'),
                    Card(margin: const EdgeInsets.only(top: iconCardPadding/2),),
                  ]
                  ),),
                ),
              ),
            ]),

        ), ),
    );
  }
}