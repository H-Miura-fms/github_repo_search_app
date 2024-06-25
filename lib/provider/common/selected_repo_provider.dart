import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../model/github_repo_model.dart';

// 選択されたリポジトリを保持
final selectRepoStateProvider = StateProvider<GithubRepoModel?>((_) {
  return null;
});
