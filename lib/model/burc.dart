class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;

  //gizli değişkenlere erişmek için get kullanıyoruz
  get burcAdi => this._burcAdi;
  get burcTarihi => this._burcTarihi;
  get burcDetayi => this._burcDetayi;
  get burcKucukResim => this._burcKucukResim;
  get burcBuyukResim => this._burcBuyukResim;

  Burc(this._burcAdi, this._burcTarihi, this._burcDetayi, this._burcKucukResim,
      this._burcBuyukResim);

  @override
  String toString() {
    return "$_burcAdi -- $_burcBuyukResim";
  }
  // değişken.toString() yazılınce ne tarzda çıktı vereceğini ayarladık
}
