import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'What is your name?',
          'name': 'Shardhay Vatshyayan',
        },
        'sa_IN': {
          'message': 'भवतः नाम किमस्ति?',
          'name': 'श्रद्धेय वात्स्यायन',
        },
      };
}
