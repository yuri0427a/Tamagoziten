# README

#たまご辞典

## サイト概要
卵料理のレシピサイト

### サイトテーマ
タンパク質不足防止、  
タンパク質が豊富でコスパも良く、  
調理も簡単な卵料理レシピに特化したサイト。  
レシピ閲覧、投稿、ブックマーク機能だけでなく、たんぱく質や卵の栄養知識も知る事ができる。


### テーマを選んだ理由
私は大学時代、管理栄養士養成の大学に通っておりました。

その中で三大栄養素の一つ「タンパク質」は筋肉だけでなく、  
血液、毛髪、皮膚、臓器様々なものを作り上げる役割を持っています。

その中でも卵はタンパク質が６.2gとたった１個食べるだけで１日の必要量の約１３％を占めています。  
かつコスパも調理方法も簡単なため、あまり時間が取れないユーザーであったり、料理初心者のユーザーに最適だと考えました。  
物知りの母も卵の摂取を推していて、私も将来一人暮らしするにあたり、何か栄養を考え調理できるようになりたいと考え、同じユーザーがいるのではないかなと考えました。  たんぱく質積極的摂取、簡単調理をベースにユーザーの食の手助けやモチベーションが上がるようなサイトにしていきたいです。

### ターゲットユーザ
・料理に興味があり、食に関する健康を気にする20代〜50代男女  
・料理はしたいが、時間があまり取れないユーザー  
・栄養学に興味があるユーザー  
・料理好きなユーザー  

### 主な利用シーン
・レシピを確認し調理をする際  
・卵料理が食べたい際  
・栄養に興味がある

## 設計書
ワイヤーフレーム
https://app.diagrams.net/#G1XCiI-p0uNivuPs4q0Qi9WYLzhyZgGaVA

タスクテーブル,テーブル設計書
https://docs.google.com/spreadsheets/d/10qrBbpBlOS05fofwAsxR6fBP9ims1-iX-Qb43_-rYhI/edit#gid=1773513600

ER図
https://drive.google.com/file/d/1xYbq2cULtz1LSRfu_623gZJwr26_mLEC/view?usp=sharing

詳細設計
https://docs.google.com/spreadsheets/d/12jTgrjX73fzKWKoU9TxtXdk1oHdnoYRS/edit#gid=2039032075

### 機能一覧
https://docs.google.com/spreadsheets/d/1IXXbrOzEMknkBaVxdGBFGR2QaDzeW80pfZs3BtbrwBA/edit?usp=sharing

## gem一覧

### デバック
gem 'pry-byebug'  
gem 'pry-doc'  
gem 'pry-rails' 

### ログイン機能
gem 'devise' 

### レイアウト
gem 'bootstrap-sass', '~> 3.3.6'  
gem 'font-awesome-rails'  
gem 'jquery-rails' 

### 動的フォーム実装機能
gem 'cocoon'  
gem 'jquery-rails' 

### 画像投稿機能
gem "refile"   
gem "refile-mini_magick" 

### ページネーション機能
gem 'kaminari', '~> 0.17.0' 

### バリデーション日本語化
gem 'devise-i18n'  
gem 'devise-i18n-views'

### 検索機能
gem 'ransack'

### デプロイ
gem 'mysql2'