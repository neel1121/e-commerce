import 'package:flutter/material.dart';
import 'package:project/Model/GetX/Controller/profile_controller.dart';
import 'package:project/Model/Tools/JsonParse/product_parse.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitial()) {
    on<FavoriteEvent>((event, emit)async {
      final profileFunctions = Get.find<ProfileController>().profileFunctions;
      if (event is FavoriteStart) {
        final List<ProductEntity> productList =await
        profileFunctions.getFavoriteProducts();
        if (productList.isNotEmpty) {
          emit(FavoriteSuccess(productList));
        } else {
          emit(FavoriteEmpty());
        }
      }
    });
  }
}