import 'package:base_module/core/services/cache_service.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:logger/web.dart';

class GetxManager {
  static Future<void> setupServices() async {
    Get.put(Dio(), permanent: true);
    Get.put(Logger(), permanent: true);
    Get.put(CacheService(), permanent: true);
  }

}
