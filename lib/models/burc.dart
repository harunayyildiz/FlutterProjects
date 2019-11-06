

class Burc {
  String _burcAdi;
  String _burcTarihi;
  String _burcDetay;
  String _burcFoto;

  Burc(this._burcAdi,this._burcTarihi,this._burcDetay,this._burcFoto); //contruction 
  String get burcBuyukresimget =>_burcFoto;
  set burcBuyukresimset(String value){
    _burcFoto=value;
  }

  String get burcAdiget =>_burcAdi;
  set burcAdiset(String value){
    _burcAdi=value;
  }
  String get burcTarihiget =>_burcTarihi;

  set burcTarihiset(String value){
    _burcTarihi=value;
  }

  String get burcDetayget =>_burcDetay;
  set burcDetayset(String value){
    _burcDetay=value;
  }
}
//burçlar için veri kaynağım