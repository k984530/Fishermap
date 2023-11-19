import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Crawler {
  static void test() async {
    http.Response response = await http
        .get(Uri.parse('https://www.nifs.go.kr/board/actionBoard0013List.do'));
    print(response.body);
  }
}
