import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecommendedSpaces() async {
    var result = await http
        .get('https://bwa-cozy-api.vercel.app/recommended-spaces' as Uri);

    print(result.statusCode);
    print(result.body);
  }
}
