import 'package:darl_dispatch/AuthManagers/api_services.dart';
import 'package:dio/dio.dart';

class AuthRepo with ApiServices{

  Future<Response?> register(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("register.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

  Future<Response?> login(Map<String, String> credentials) async {
    Response? response = await apiPostRequests("login.php", credentials);

    if (response != null) {
      return response;
    }

    return null;
  }

}