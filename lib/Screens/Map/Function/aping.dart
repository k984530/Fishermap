import 'package:http/http.dart' as http;

class Aper {
  static void test() async {
    final url = Uri.parse(
      "https://www.nifs.go.kr/OpenAPI_json?id=risaList&" +
          "key=qPwOeIrU-2311-VFDUZK-0714",
    );

    final response = await http.get(url);
    print(response.body);
  }
}
