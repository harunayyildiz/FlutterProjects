import 'package:burc_uygulama/models/burc.dart';
import 'package:burc_uygulama/utils/strings.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  static List<Burc> tumBurclar = verikaynaginihazirla(); //her taraftan erişmek için
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
        actions: <Widget>[
          Icon(
            Icons.ac_unit,
          ),
        ],
      ),
      body:
          burcListesiicerik(), //bir widget bekliyor bizde fonksiyon ile bir witger gönderdik..
    );
  }

  //sınıfa özgü olduğundan dolayı static geldi eğerki override içerisinde yapmış olsaydık olmazdı...
  static List<Burc> verikaynaginihazirla() {
    List<Burc> burclar = [];
    for (int i = 0; i < 12; i++) {
      String resim = Strings.BURC_ADLARI[i].toLowerCase() +
          ".jpg"; //Burc Adını cekti Koc--koc yaptı sonuna jpg koydu
      Burc eklenecekburc = Burc(Strings.BURC_ADLARI[i],
          Strings.BURC_TARIHLERI[i], Strings.BURC_GENEL_OZELLIKLERI[i], resim);
      burclar.add(eklenecekburc);
    }
    return burclar;
  }

  Widget burcListesiicerik() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return tekSatirburc(context,index);
              },
              itemCount: tumBurclar.length,
            );
          }
        
Widget tekSatirburc(BuildContext context, int index) {
  return Padding(
    padding: EdgeInsets.all(5),
    child: Card(
    elevation: 4,
    child: ListTile(
      onTap: ()=>Navigator.pushNamed(context, "/burc_detay/$index"),
      leading: Icon(Icons.beenhere),
      title: Text(tumBurclar[index].burcAdiget),
      subtitle:Text(tumBurclar[index].burcTarihiget),
      trailing: Icon(Icons.arrow_forward_ios ),
    ),
  ),
  );
}
         
        }
        
   
