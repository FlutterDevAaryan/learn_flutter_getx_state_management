import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:learn_flutter_getx_state_management/model/productModel.dart';
class ApiServices {
  static var client = http.Client();

  static Future<List<ProductModel>?> fetchProducts() async {
    var response = await client.get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'));
    if(response.statusCode == 200) {
      var jsonString = response.body;
      debugPrint('response = $jsonString');
      log(jsonString);
      return prodModelFromJson(jsonString);
    }
    return null;
  }
  
}
