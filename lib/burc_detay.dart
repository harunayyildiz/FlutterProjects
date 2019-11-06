import 'package:burc_uygulama/models/burc.dart';
import 'package:flutter/material.dart';
import 'package:burc_uygulama/burc_liste.dart';
import 'package:palette_generator/palette_generator.dart';  

class BurcDetay extends StatelessWidget {
  int gelenIndex;
  Burc secilenBurc;
  BurcDetay(this.gelenIndex);
  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[gelenIndex];
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/"+secilenBurc.burcBuyukresimget,
                fit: BoxFit.fill,
              ),
              centerTitle: true,  //kaydırdıktan sorna ortada kalsın yazı
              title: Text(secilenBurc.burcAdiget + "  Burcu ve Özellikleri"),
            ), //sliverappbarda arka plan için özel witget
             
            backgroundColor: Colors.pink,
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              //tek bir çocuğu olan  bir taşma durumunda yukarı aşağı scroll özelliği
              child: Text(
                secilenBurc.burcDetayget,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ), //uzun string oldığı içib bunu kullandık
            ),
          ),
        ],
      ),
    );
  }
}
