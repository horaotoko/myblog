---
title: MiddlemanでGitHub Pagesにブログをつくる
date: 2014-02-02 01:13 JST
tags: middleman
---

Middlemanのブログめっちゃはやい…よい…。  
黒い画面使える人にはCMS使って動的なブログ運営するよりこっちの方がいいんじゃないかと思う今日このごろです。

今回ブログを移行しようと思って、だいたいこんな感じで設置したいなーとおもってたんですが、ぴったり来るような記事がなかったので、まとめておきます。

「GitHub Pages一応作ってみたけど、特に用途ないねえ。」  
「Middleman？あー便利だよね。そんな使ったことないけど。」  
「ブログ作り直したいけどサーバーにCMS設置するのやだ…めんどいし重い…。」

というような人に読んでもらえたら幸いです。

### 事前に用意するもの


* GitHub Pages（.ioドメイン）
* Ruby環境（今回は2.1.0を使いました）
* Middleman
* bundler
* 黒い画面（ターミナル）

一応GitHubユーザー向けなので、Gitと黒い画面はもうある程度使えるという前提で進めます。  
あとRubyの環境はMiddlemanを使う上で必須です。GitHub Pagesも簡単に作れるので作っておきましょう。

### middleman-blogを入れる

Middlemanが公式でサポートしている拡張機能でブログのひな形を作ってくれるジェネレータがgemであります。まずはそれをインストールして、プロジェクトを作成します。
    
    $ gem install middleman-blog
    $ middleman init myblog --template=blog

`--template=blog`を加えることで、middleman-blogが勝手に中身を用意してくれます。中はこんな感じ。

    myblog
     |- .gitignore
     |- config.rb
     |- Gemfile
     |- Gemfile.lock
     |- source
        |- 2012-01-01-example-article.html.markdown
        |- calendar.html.erb
        |- feed.xml.builder
        |- images
        |- index.html.erb
        |- javascripts
        |- layout.erb
        |- stylesheets
        |- tag.html.erb

`config.rb`や`Gemfile`、必要に応じて`Rakefile`とか作って、ブログの設定をしていく感じです。`source`の中がビルドされるので、コンテンツやスタイルシートなどは全部ここにぶち込みましょう。  
erbじゃなくてhamlとかslim使いたいなどのカスタマイズについては、次の段階で説明します。

### ローカルで確認する

とりあえずどんなのが出力されたか確認してみましょう。黒い画面で以下のコマンドを打ち込んでサーバーを立ち上げます。

    $ middleman server

そして[http://localhost:4567/](http://localhost:4567/)にアクセス。

![sample](http://gyazo.com/d512af5c41c4226f552bc96226a7ba87.png)

ちゃんとひな形を作ってくれてました。cssが入ってないので質素な感じですが、記事の一覧とタグやアーカイブ一覧も出してくれてます。

### 新しい記事を書く

記事を書きます。CMSとかだと新規投稿作成とかのリンクをクリックするのですが、Middlemanではそれも黒い画面を使います。  
新しい記事を生成するには、以下のコマンドを使います。

    $ bundle exec middleman article "Launching my blog"

そうすると、黒い画面に以下のログが出力されます。

    create  source/2014-02-01-launching-my-blog.html.markdown
    
[http://localhost:4567/](http://localhost:4567/)に確認しにいくとこのようになっています。

![sample2](http://gyazo.com/2790a69b5a771a284cf29bb668eb07e3.png)

ちゃんとできてました。ちなみに上の`"Launching my blog"`のところは英語推奨です。URLに日本語が設定されてしまうので、あいうえお.html.markdownとかになってしまいます。  
先ほど生成されたmarkdownのファイルのなかで記事のタイトルを変更できるので、生成するときは英語にしておきましょう。

### デプロイする

ようやくここまで来ました。まずは必要なデプロイに必要なgemを入れます。Gemfileを開いて`gem 'middleman-deploy'`を追加してください。そのあとに、

    $ bundle install 

で、必要なgem群をインストールします。デプロイするために必要なツールたちです。

その後、今度は`config.rb`を開いて、以下のコードを追加してください。

    activate :deploy do |deploy|
      deploy.method = :git
      deploy.branch = 'master'
    end

デプロイする方法とブランチを設定します。そしたら最後にビルドとデプロイです。

    $ bundle exec middleman build
    $ bundle exec middleman deploy
    
で、実はこのままだとデプロイできないよ！って怒られます。黒い画面で以下のように叱責されます。

    ## Deploying via git to remote="origin" and branch="master"
    Can't deploy! Please add a remote with the name 'origin' to your repo.
    
originっていうリモートリポジトリが設定されていないのが原因ですね。リモートを設定しましょう。

    $ git remote add git@github.com:USER/USER.github.io.git

実はここ、ドメインやプロジェクトページによって少々操作や設定が異なって、gh-pagesっていうブランチからじゃないとデプロイできないってことがあるらしいです。今回は`http://USER.github.io/`にブログを設置するという前提で行っております。

以上で、GitHub PagesにMiddlemanでブログを構築することができます。カスタマイズなどは今後自分でもやりながら公開していきたいと思います。

よいブログライフを！


参考にした記事

* [http://joey.aghion.com/building-a-blog-with-middleman-and-github-pages/](http://joey.aghion.com/building-a-blog-with-middleman-and-github-pages/)
* [http://blog.coiney.com/2013/06/21/host-middleman-blog-on-github/](http://blog.coiney.com/2013/06/21/host-middleman-blog-on-github/)
* [http://middlemanapp.com/jp/basics/blogging/](http://middlemanapp.com/jp/basics/blogging/)
* [http://camuro.org/blog/2013/09/renewal.html](http://camuro.org/blog/2013/09/renewal.html)