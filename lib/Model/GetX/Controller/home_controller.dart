import 'package:project/Model/Tools/Entities/entities.dart';
import 'package:project/ViewModel/Home/HomeDataSource/home_screen.dart';
// import 'package:project/ViewModel/Home/HomeDataSource/home_source.dart';
import 'package:project/ViewModel/Home/HomeRepository/home_repo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepositoryInstance = HomeRepository(
      dataSource: HomeRemoteDataSource(httpClient: HttpPackage().dio));
  HomeRepository get homeRepository => homeRepositoryInstance;
}