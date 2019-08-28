//{"errcode":"0","errmsg":"ok","data":[{"id":102,"cate_name":"\u6700\u65b0","sort":0},{"id":1,"cate_name":"\u7f8e\u5973","sort":2},{"id":12,"cate_name":"\u5c0f\u6e05\u65b0","sort":2},{"id":2,"cate_name":"\u660e\u661f","sort":5},{"id":16,"cate_name":"ACG","sort":10},{"id":5,"cate_name":"\u7eb9\u8eab","sort":11}]}

class PictureCateEntity extends Object {
  List<PictureCate> cates;
  String errorCode;
  String errorMsg;

  PictureCateEntity(this.cates , {this.errorCode, this.errorMsg});

  PictureCateEntity.fromjson(Map<String, dynamic> json) {
    if (json["data"] != null) {
      this.cates = List();
      (json["data"] as List).forEach((v) {
        this.cates.add(PictureCate.fromJson(v));
      });
    }
    this.errorCode = json["errcode"];
    this.errorMsg = json["errmsg"];
  }

  Map <String,dynamic> toJson(){
    Map <String,dynamic> data = Map();
    if(this.cates != null){
      data["data"] = this.cates.map((v){v.toJson();}).toList();
    }
    data["errcode"] = this.errorCode;
    data["errmsg"] = this.errorMsg;
    return data;
  }
}

class PictureCate extends Object {
  int id;
  String cateName;
  int sort;

  PictureCate({this.id, this.cateName, this.sort});

  PictureCate.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cateName = json['cate_name'];
    sort = json['sort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map();
    data["id"] = id;
    data["cate_name"] = cateName;
    data["sort"] = sort;
    return data;
  }
}
