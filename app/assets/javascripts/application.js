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
//= require rails-ujs
//= require activestorage
//= require jquery 
//= require cocoon
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function () {
    $('.jquery').on('click', function () {
        $(this).css('color', 'red');
    });
});

$(document).ready(function () {
    $('#theTarget').skippr({
        // スライドショーの変化 ("fade" or "slide")
        transition: 'slide',
        // 変化に係る時間(ミリ秒)
        speed: 1000,
        // easingの種類
        easing: 'easeOutQuart',
        // ナビゲーションの形("block" or "bubble")
        navType: 'bubble',
        // 子要素の種類("div" or "img")
        childrenElementType: 'div',
        // ナビゲーション矢印の表示(trueで表示)
        arrows: true,
        // スライドショーの自動再生(falseで自動再生なし)
        autoPlay: true,
        // 自動再生時のスライド切替間隔(ミリ秒)
        autoPlayDuration: 3000,
        // キーボードの矢印キーによるスライド送りの設定(trueで有効)
        keyboardOnAlways: true,
        // 一枚目のスライド表示時に戻る矢印を表示するかどうか(falseで非表示)
        hidePrevious: false
    });
});


//recipe_title_placeholder(recipe_new)
//placeholderのランダム表示
$(function () {
    //
    var list =
        [
            '例）オムライス',
            '例）ふんわり♪卵焼き',
            '例　簡単！親子丼',
            '例）半熟茹で卵の作り方,',
            '例）ほうれん草の卵とじ'
        ],
        //リストの数をチェックしてランダム表示
        //Math.floor()小数点以下を切り捨てる 戻り値:integer。
        //Math.random() *数値 でその範囲内のランダムな値を取得。

        r = Math.floor(Math.random() * list.length);

    //placeholderに挿入
    //prop()...指定した属性の値を取得する。戻り値:String。
    $('#placeholder').prop('placeholder', list[r]);

});
//$(function () {
// limits the number of categories
//$('.fields-procrdures').on('cocoon:after-insert', function () {
//check_to_hide_or_show_add_link();
//});

//$('.fields-procrdures').on('cocoon:after-remove', function () {
//check_to_hide_or_show_add_link();
//});

//check_to_hide_or_show_add_link();



//function check_to_hide_or_show_add_link(i) {
//aaa = $('.procrdures-form').length
//$('.step-number').text(aaa);
// }

//})

//recipe_show accordion

$(function () {
    $('.accordion')
        //liをクリックで処理を開始
        .on('click', 'li', function () {
            var $this = $(this);
            //コンテンツを開く
            $this
                //.toggle('クラス名’)各要素のうち、表示状態にあるものを非表示にし、非表示状態にあるものは表示状態にします。
                .toggleClass('expanded')
                .children('.content')
                .slideToggle('fast');
        });
});

//recipe_show carousel
$(function () {
    $('#carousel')
        .find('.thumbs-list').each(function () {
            var $this = $(this);
            //#carouselの幅
            var listWidth = $this.outerWidth() * 2;
            $this.parent().width(listWidth);

            $this.clone().insertAfter($this);
        });
});