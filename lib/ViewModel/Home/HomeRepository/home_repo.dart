import 'package:project/Model/Tools/JsonParse/product_parse.dart';
import 'package:project/ViewModel/Home/HomeDataSource/home_screen.dart';

class HomeRepository implements HomeDataSource {
  final HomeDataSource dataSource;

  HomeRepository({required this.dataSource});
  @override
  Future<List<ProductEntity>> getProducts() => dataSource.getProducts();

  @override
  Future<List<ProductEntity>> getProductsWithKeyWord(
      {required String keyWord}) =>
      dataSource.getProductsWithKeyWord(keyWord: keyWord);
}