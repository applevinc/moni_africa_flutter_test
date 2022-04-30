import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:moni_africa_flutter_test/src/core/constants/api_urls.dart';
import 'package:moni_africa_flutter_test/src/core/helpers/failure.dart';

class RequestHelper {
  static Future<dynamic> getRequest({required String url}) async {
    var webUrl = APIURLs.baseURL + url;
    log(webUrl);

    try {
      var response = await http.get(Uri.parse(webUrl));

      if (response.statusCode < 200 || response.statusCode > 299) {
        var message = jsonDecode(response.body)['message'];
        log(message.toString());
        throw Failure(message.toString());
      }
      final decodedData = jsonDecode(response.body);
      log("payload response --" + json.encode(decodedData));
      return decodedData;
    } on SocketException {
      throw Failure('No Internet connection 😑');
    } on HttpException catch (e) {
      log(e.message);
      throw Failure('Server error, try again later');
    } on FormatException {
      throw Failure('Server error, try again later');
    }
  }
}
