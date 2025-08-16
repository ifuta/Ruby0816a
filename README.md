# Ruby Homepage

Sinatraフレームワークを使用して作成された美しいホームページです。

## 特徴

- 🚀 **高速**: Sinatraの軽量性により、高速なレスポンスを実現
- 📱 **レスポンシブ**: あらゆるデバイスで最適な表示を提供
- 🎨 **モダン**: 最新のデザイントレンドを取り入れた美しいUI
- 🌐 **多言語対応**: 日本語UIで使いやすい

## 技術スタック

- **Ruby**: プログラミング言語
- **Sinatra**: Webフレームワーク
- **ERB**: テンプレートエンジン
- **CSS3**: スタイリング
- **HTML5**: マークアップ

## セットアップ

### 前提条件

- Ruby 3.0以上
- Bundler

### インストール

1. リポジトリをクローン
```bash
git clone <your-repository-url>
cd ruby-homepage
```

2. 依存関係をインストール
```bash
bundle install
```

3. アプリケーションを起動
```bash
bundle exec ruby app.rb
```

4. ブラウザで `http://localhost:4567` にアクセス

## 開発

### ファイル構造

```
ruby-homepage/
├── app.rb              # メインアプリケーションファイル
├── Gemfile             # 依存関係
├── views/              # ERBテンプレート
│   ├── layout.erb      # 共通レイアウト
│   ├── index.erb       # ホームページ
│   ├── about.erb       # Aboutページ
│   └── contact.erb     # お問い合わせページ
├── public/             # 静的ファイル
│   └── css/
│       └── style.css   # スタイルシート
└── .github/workflows/  # GitHub Actions
    └── deploy.yml      # デプロイ設定
```

### 開発サーバー

開発中は `rerun` を使用してファイルの変更を自動で検知できます：

```bash
bundle exec rerun app.rb
```

## デプロイ

### GitHub Pages

このプロジェクトは GitHub Actions を使用して自動的に GitHub Pages にデプロイされます。

1. リポジトリの設定で GitHub Pages を有効化
2. ソースを "GitHub Actions" に設定
3. `main` ブランチにプッシュすると自動デプロイ

### 手動デプロイ

静的ファイルを生成して手動でデプロイすることも可能です：

```bash
# 静的ファイルを生成
mkdir -p dist
cp -r public/* dist/
cp views/*.erb dist/
cp app.rb dist/
```

## カスタマイズ

### スタイルの変更

`public/css/style.css` を編集してデザインをカスタマイズできます。

### コンテンツの変更

各ページのコンテンツは `views/` ディレクトリ内のERBファイルで管理されています。

### ルートの追加

`app.rb` に新しいルートを追加できます：

```ruby
get '/new-page' do
  erb :new_page
end
```

## ライセンス

MIT License

## 貢献

プルリクエストやイシューの報告を歓迎します。

## サポート

問題が発生した場合は、GitHubのイシューを作成してください。 # Ruby0816a
