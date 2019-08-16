class Student extends Object{

  void test1(int a){
    print('$a');
  }

  void test2(num a){
    var list = [1,2,3,3,4,];
    var list1 = List.of([1,2,3,4,]);
    list.add(2);
    list.addAll([1,3,3,4]);
    final name = "123";
    const name1 = "123";
    const hostApi = "https://www.baidu.com";


  }
}
//
//class Item extends Object{
//  double price;
//  String name;
//  Item(name,price){
//    this.price = price;
//    this.name = name;
//  }
//}
//
//class ShoppingCart{
//  String name;
//  DateTime date;
//  List<Item> books;
//  String code;
//
//  price(){
//    double sum = 0.0;
//    for(var item in books){
//      sum += item.price;
//    }
//    return sum;
//  }
//
//  ShoppingCart(name,code){
//    this.name = name;
//    this.code = code;
//    this.date = DateTime.now();
//  }
//
//  getInfo(){
//    return "购物车信息" +
//           "用户名" + name +
//           "优惠吗" + code +
//           "价格" + price().toString() +
//           "日期" + date.toString();
//  }
//}
//
//abstract class PrintHolder{
//  printInfo() => print(getInfo());
//  getInfo();
//}
//
//class Mate extends Object {
//  double price;
//  String name;
//  Mate (this.name,this.price);
//
//  Item operator+ (Item item) => Item(item.name + name,item.price + price);
//}
//
//
//class Item extends Mate with PrintHolder{
//  Item(name,price):super(name,price);
//}
//
//class ShoppingCart extends Mate{
//  DateTime date;
//  List<Item> books;
//  String code;
//
//  double get price{
//    return books.reduce((item1,item2)=>item1 + item2).price;
//  }
//
//  ShoppingCart(name,this.code):this.date = DateTime.now(),super(name,0.0);
//
//  getInfo(){
//    return "购物车信息" +
//        "用户名" + name +
//        "优惠吗" + code +
//        "价格" + price.toString() +
//        "日期" + date.toString();
//  }
//
//}

