class Api extends Object{
  static const String BASE_URL = "http://www.api.23read.cn/";


  ///视频分类
  ///edition=2&token=1CECE2221211DDCB613882C3311EC670&versionCode=9
  static const String Video_Cate_URL = "/video/column_list";

  ///视频列表
  ///edition=2&object_id=18&token=1CECE2221211DDCB613882C3311EC670&p=1&versionCode=9
  static const String Video_List_URL = "/video/video_list";


  ///视频详情
  ///edition=2&uid=1299502&token=1CECE2221211DDCB613882C3311EC670&id=14662&versionCode=9
  static const String Video_Detail_URL = "/video/video_details";

  ///相关视频
  ///edition=2&object_id=18&vid=14662&uid=1299502&token=1CECE2221211DDCB613882C3311EC670&p=1&versionCode=9
  static const String Video_Relevant_URL = "/video/relevant_video";

  ///图片分类
  ///edition=2&token=1CECE2221211DDCB613882C3311EC670&versionCode=9
  static const String Picture_Cate_URL = "/picture/pic_cate";

  ///图片列表
  ///edition=2&token=1CECE2221211DDCB613882C3311EC670&p=1&cate_id=102&versionCode=9
  static const String Picture_List_URL = "/picture/pic_list";

  ///图片详情
  ///edition=2&token=1CECE2221211DDCB613882C3311EC670&id=16445&uid=1299502&versionCode=9
  static const String Picture_Detail_URL ="/picture/picture";



}