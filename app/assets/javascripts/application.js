// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require cocoon
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function () {
  $(".jquery").on("click", function () {
    $(this).css("color", "red");
  });
});

//recipe_title_placeholder(recipe_new)
//placeholderのランダム表示
$(function () {
  //
  var list = [
      "例）オムライス",
      "例）ふんわり♪卵焼き",
      "例  簡単！親子丼",
      "例）半熟茹で卵の作り方,",
      "例）ほうれん草の卵とじ",
    ],
    //リストの数をチェックしてランダム表示
    //Math.floor()小数点以下を切り捨てる 戻り値:integer。
    //Math.random() *数値 でその範囲内のランダムな値を取得。

    r = Math.floor(Math.random() * list.length);

  //placeholderに挿入
  //prop()...指定した属性の値を取得する。戻り値:String。
  $("#placeholder").prop("placeholder", list[r]);
});

//recipe_show accordion

$(function () {
  $(".accordion")
    //liをクリックで処理を開始
    .on("click", "li", function () {
      var $this = $(this);
      //コンテンツを開く
      $this
        //.toggle('クラス名’)各要素のうち、表示状態にあるものを非表示にし、非表示状態にあるものは表示状態にします。
        .toggleClass("expanded")
        .children(".content")
        .slideToggle("fast");
    });
});
//recipe_show carousel
$(function () {
  $("#carousel")
    .find(".thumbs-list")
    .each(function () {
      var $this = $(this);
      //#carouselの幅(
      var listWidth = $this.outerWidth();
      $this.parent().width(listWidth);

    })
    //カルーセルの動き
    //直前のトラバースをキャンセルする働き
    .end()
    .on("click", "a.prev", function (event) {
      event.preventDefault();
      doCarousel($(this), 1);
    }) //右矢印をクリックした時
    .on("click", "a.next", function (event) {
      //実行したイベントがキャンセル可能である場合、イベントをキャンセル
      event.preventDefault();
      doCarousel($(this), -1);
    });

  //カルーセル動かす
  //directionは文字表記の方向を指定できるプロパティ
  //closest()直近の親要素を取得
  //find() 子孫要素の取得
  function doCarousel(btn, direction) {
    var $btn = btn;
    var $carousel = $btn.closest(".carousel");
    var $imgContainer = $carousel.find(".thumbs");

    //移動量を計算
    var move = (direction * $carousel.width())/3 + $imgContainer.position().left;
    //右に動く動作がないとき左に動くanimate()を指示する(移動がおかしくならないように)
    $imgContainer
      .filter(":not(:animated)")
      //animate()CSSの値を指定して、アニメーションを表現してくれる。
      .animate(
        {
          left: move,
        },
        {
          //duration アニメーションの速度指定。
          duration: 800,
          progress: function () {
            var $this = $(this);
            //現在マッチしている要素の中で最初の要素だけを取り出す
            var $imgList = $this.find(".thumbs-list").first();
            //移動えようがthumbs-listを上回ったらthumbsのポジションをリセット
            //関数resetPos...初期座標の算出
            var resetPos;
            //<をクリック
            //directionが１かつimgContainerが０のときtrueになる
            //.position()...特定のHTML要素の位置座標を取得することができるユニークなメソッド

            if (direction == 1 && 0 <= $this.position().left) {
              resetPos = $this.position().left - $imgList.outerWidth();
              $this.css({ "left": resetPos});
            }
            //>をクリック
            if (
              direction == -1 && $imgList.outerWidth() <= Math.abs
                ($this.position().left)) {
              resetPos = $this.position().left + $imgList.outerWidth();
              $this.css({ "left": resetPos});
            }
          }
        }
      );
  }
});

//レシピ画像プレビュー

$(function () {
  $('#recipefile').change(function (e) {
    //ファイルオブジェクトの取得
    var file = e.target.files[0];
    var reader = new FileReader();

    //画像でない場合は処理の終了
    //indexOf()fromIndex から検索を始め、指定された値が最初に現れたインデックスを返します.見つからない場合は-1
    if (file.type.indexOf("image") < 0) {
      alert("画像ファイルを指定してください");
      return false;
    }
    //アップロードした画像を選択する
    reader.onload = (function (file) {
      return function (e) {
        $("#img1").attr("src", e.target.result);
        $("#img1").attr("title", file.name);
      };
    })(file);
    reader.readAsDataURL(file);
  }); 
});