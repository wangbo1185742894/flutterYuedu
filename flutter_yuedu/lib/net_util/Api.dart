class Api extends Object{
  static const String BASE_URL = "http://www.api.23read.cn/";


//  视频分类 edition=2&token=1CECE2221211DDCB613882C3311EC670&versionCode=9
  static const String Video_Cate_URL = "/video/column_list";
  


  视频列表
  http://www.api.23read.cn//video/video_list
  edition=2&object_id=18&token=1CECE2221211DDCB613882C3311EC670&p=1&versionCode=9

  视频详情
  http://www.api.23read.cn//video/video_details
  edition=2&uid=1299502&token=1CECE2221211DDCB613882C3311EC670&id=14662&versionCode=9

  相关视频
  http://www.api.23read.cn//video/relevant_video
  edition=2&object_id=18&vid=14662&uid=1299502&token=1CECE2221211DDCB613882C3311EC670&p=1&versionCode=9


  图片分类
  http://www.api.23read.cn//picture/pic_cate
  edition=2&token=1CECE2221211DDCB613882C3311EC670&versionCode=9

  图片列表
  http://www.api.23read.cn//picture/pic_list
  edition=2&token=1CECE2221211DDCB613882C3311EC670&p=1&cate_id=102&versionCode=9

  图片详情
  http://www.api.23read.cn//picture/picture
  edition=2&token=1CECE2221211DDCB613882C3311EC670&id=16445&uid=1299502&versionCode=9

}