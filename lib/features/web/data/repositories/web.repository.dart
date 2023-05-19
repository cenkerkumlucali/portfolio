import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/web/data/models/web_page.model.dart';
import 'package:roman_web_portfolio/features/web/data/repositories/iweb.repository.dart';
import 'package:roman_web_portfolio/features/web/data/repositories/mock_web.repository.dart';
import 'package:roman_web_portfolio/helpers/enums.dart';
import 'package:roman_web_portfolio/shared/providers/shared_providers.dart';

class WebPageRepository implements IWebPageRepository {

  final Ref ref;
  WebPageRepository(this.ref);

  @override
  Future<WebPageModel> getWebPageData() {
    MockWebPageRepository mock = MockWebPageRepository();
    return  mock.getWebPageData();
  }
}