
import 'package:flutter/material.dart';
import 'burc_liste.dart';
import 'burc_detay.dart';

void main() => runApp(AnaYapi());

class AnaYapi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/burclistesi",
      routes: {
        "/": (context) =>BurcListesi(), //rota tanımlandı ise home kısmını yazmıyoruz....
        "/burclistesi": (context) => BurcListesi(),
        //"/burc_detay/$index":(context)=>BurcDetay(),
        
      },
      onGenerateRoute:(RouteSettings settings){
        List<String> pathElemanlari = settings.name.split("/");   //        / burcDetay / 1 
        if(pathElemanlari[1]=="burc_detay"){
          return MaterialPageRoute(builder: (context)=>BurcDetay(int.parse(pathElemanlari[2])));
        }
          return null;
      },
      theme: ThemeData(
        primaryColor: Colors.yellow,
      ),
    );
  }
}
