import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roman_web_portfolio/features/github/data/models/github_page.model.dart';
import 'package:roman_web_portfolio/features/github/data/repositories/igithub.repository.dart';
import 'package:roman_web_portfolio/features/github/data/repositories/mock_github.repository.dart';
import 'package:roman_web_portfolio/helpers/enums.dart';
import 'package:roman_web_portfolio/shared/providers/shared_providers.dart';

class GithubRepository implements IGithubRepository {

  final Ref ref;
  GithubRepository(this.ref);
  
  @override
  Future<GithubPageModel> getGithubPageData() {
    MockGithubRepository mock = MockGithubRepository();
    return  mock.getGithubPageData();
  }
}