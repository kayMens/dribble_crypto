class Asset {
  final String icon;
  final String name;
  final String price;
  final String value;
  final String percentage;

  Asset(this.icon, this.name, this.price, this.value, this.percentage);

  static get getAssets => [
        Asset(
            "icon", "ethereum", "0.73 eth", "\$ 6,000.25", "\$ 4,200.2 . 21%"),
        Asset(
            "icon", "cardano", "1.122 car", "\$ 7,000.25", "\$ 6,200.2 . 21%"),
        Asset("icon", "binance", "1.24 bn", "\$ 8,000.25", "\$ 7,200.2 . 21%"),
        Asset(
            "icon", "bitcoin", "12,015 btc", "\$ 1,000.25", "\$ 1,200.2 . 21%"),
        Asset("icon", "usdc", "1,220 usdc", "\$ 1,000.25", "\$ 1,200.2 . 21%"),
      ];
}
