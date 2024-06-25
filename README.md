# github_repo_search_app

githubリポジトリ検索アプリです
(株式会社ゆめみ Flutter エンジニアコードチェック課題)  


## 環境
### バージョン
stable(3.22.2)  
fvmで管理  

*windows環境で開発(Androidのみ実装)

## 画面構成
- テキスト入力後，リストが表示  
  *モバイルの場合  
    詳細ページに遷移  
  *タブレットの場合  
    画面右側に詳細を表示  
- サイドバーにダークモードおよび言語の選択を実装  
  

## 実装
### アーキテクチャ
MVVM+Repositoryを採用  
Providerを用いてDI  

### 状態管理
riverpodを使用

### http通信
retrofit(Dio)を使用

### 多言語対応
slangを使用

### 画面実装
HooksおよびProviderを使用  
Listにおいて，追加読み込み(無限スクロール)，pull to refreshを実装

### データ保存
ダークモードおよび言語設定を端末に保存(shared preferences)  


## 生成AIについて
一部widgetの簡易実装や色(Theme)，テストケースの実装に使用  
主にCluade3.5(sonet)を使用
