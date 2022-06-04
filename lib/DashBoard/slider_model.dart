class SliderModel {
  String? image;
  String? text;
  String? altText;
  String? bAltText;
  String? productImage;
  int? kBackgroundColor;

  SliderModel(this.image, this.text, this.altText, this.bAltText,
      this.productImage, this.kBackgroundColor);

  SliderModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    kBackgroundColor = json['kBackgroundColor'];
    text = json['text'];
    altText = json['altText'];
    bAltText = json['bAltText'];
    productImage = json['productImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['kBackgroundColor'] = this.kBackgroundColor;
    data['text'] = this.text;
    data['altText'] = this.altText;
    data['bAltText'] = this.bAltText;
    data['productImage'] = this.productImage;
    return data;
  }
}

List<SliderModel> slides =
    slideData.map((item) => SliderModel.fromJson(item)).toList();

var slideData = [
  {
    "image": "asset/images/articlesStackHolder.jpg",
    "kBackgroundColor": 0xFF2c614f,
    "text": "Articles",
    "altText": "Content About Artcles",
    "bAltText": "",
    "productImage": "assets/images/mockup.png"
  },
  { 
    "image": "asset/images/seminarStackHolder.jpg",
    "kBackgroundColor": 0xFF8a1a4c,
    "text": "Seminar",
    "altText": "Content About seminar.",
    "bAltText":
        "",
    "productImage": "assets/images/mockup-2.png"
  },
  {
    "image": "asset/images/AICTE.jpg",
    "kBackgroundColor": 0xFF0ab3ec,
    "text": "AICTE",
    "altText":
        "Content about Aicte",
    "bAltText":
        "",
    "productImage": "assets/images/mockup-3.png"
  }
];
