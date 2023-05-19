import 'package:roman_web_portfolio/features/welcome/data/models/welcome_page.model.dart';
import 'package:roman_web_portfolio/features/welcome/data/repositories/iwelcome.repository.dart';

class MockWelcomeRepository implements IWelcomeRepository {

  @override
  Future<WelcomePageModel> getWelcomePageData() {
    
    return Future.delayed(const Duration(seconds: 4), () {
      return WelcomePageModel(
        name: 'Cenker',
        title: 'Software Developer',
        subTitle: 'C#, Flutter, Angular and SQL',
        imgPath: 'https://avatars.githubusercontent.com/u/77276792?v=4',
        greetings: [
          "Hello","Hola", "Bonjour", "Ciao","Merhaba"
        ]
      );
    });
  }
}