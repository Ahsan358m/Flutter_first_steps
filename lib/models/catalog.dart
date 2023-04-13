class CatalogModel {
  static final items = [
    Item(
      1,
      "iPhone 12 Pro",
      "Apple iPhone 12th generation",
      300000,
      "#33505a",
      "https://cdn.shopify.com/s/files/1/0269/6580/3031/products/iphone-12-pro-max-gold-hero_dacc4e0b-839a-4fad-ad49-72bcde483af7_1024x1024.png?v=1658316898",
    ),
    Item(
      2,
      "Samsung S20FE",
      "Samsung S20FE",
      120000,
      "#33505a",
      "https://fundamental.in/wp-content/uploads/2021/07/233767_3_waayyl.png",
    ),
    Item(
      3,
      "iPhone SE 2022",
      "Apple iPhone SE 2022",
      30000,
      "#33505a",
      "https://www.applestore.pk/wp-content/uploads/2022/06/iPhone-SE-2022-apple-store-in-karachi.png",
    ),
    Item(
      4,
      "Samsung S23 Ultra",
      "Samsung S23 Ultra",
      350000,
      "#33505a",
      "https://api.sammobile.com/static/Galaxy%20S23%20Ultra_Product%20Image_Phantom%20Black_Devicepenbackr30_LI.png?1675244878",
    ),
    Item(
      5,
      "iPhone 14 Pro Max",
      "Apple iPhone 14th generation",
      450000,
      "#33505a",
      "https://w7.pngwing.com/pngs/60/414/png-transparent-iphone-14-thumbnail.png",
    )
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
