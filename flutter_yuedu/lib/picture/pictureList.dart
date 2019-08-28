class PictureList  extends Object{
  int    id;
  int    cateId;
  String headImg;
  String img;
  String title;
  int    coin;
  String all_coin;
  int    pic_num;
  int    begin;
  int    review_num;
  int    is_ad;
  String ad_img;
  String ad_url;
  String subtitle;
  String url_type;
  double subtype;
  String app_name;


  PictureList.formJson(Map map){
    this.id = map["id"];
    this.cateId = map["cateId"];
    this.headImg = map["headimg"];
    this.img = map["img"];
    this.title = map["title"];
    this.coin = map["coin"];
    this.all_coin = map["all_coin"];
    this.pic_num = map["pic_num"];
    this.begin = map["begin"];
    this.review_num = map["review_num"];
    this.is_ad = map["is_ad"];
    this.ad_img = map["ad_img"];
    this.ad_url = map["ad_url"];
    this.subtitle = map["subtitle"];
    this.url_type = map["url_type"];
    this.app_name = map["app_name"];
    this.subtype = map["subtype"];
  }

}