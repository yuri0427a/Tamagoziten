

//= require rails-ujs
//= require activestorage
//= require jquery
//= require bootstrap-sprockets
//= require_tree .

$(function () {
    //モーダルウィンドウを開く
    function showModal(event) {
        event.preventDefault();

        //③シェードの生成
        var $shade = $('<div></div>')
        $shade
            .attr('id', 'shade')
            .on('click', hideModal);　//3クリックされ時呼び出す設定

        var $modalWin = $('#modalwin');
        var $window = $(window);
        //②全体の高さ（幅）-モーダルウィンドウの高さ（幅）/2 =　中央ぞろえ
        var posX = ($window.width() - $modalWin.outerWidth()) / 2;　　//★
        var posY = ($window.height() - $modalWin.outerHeight()) / 2;　//★
        //②outwidth(heigth)・・・モーダルウィンドウの幅(高さ)

        $modalWin
            .before($shade)　//③divをモーダルウィンドウ前に生成させる→シェードも一緒に表示させる
            .css({ left: posX, top: posY }) //②★で座標の計算
            //①モーダルウィンドウを表示する働き（Bのdisplayを操作）
            .removeClass('out')  //outを消して→none取り消し
            //①display: block;
            .addClass('show')　　//showを追加する→blockにする
            //①イベントバンドラでbutttonウィンドウを閉じられるようにしている ③modal-closeでシェードも閉じられるようにする
            .on('click', 'button, .modal-close', function () {
                hideModal();
            });
    };
    function hideModal() {
        $('#shade').remove();
        $('#modalwin')
            .removeClass('show')
            .addClass('hide');
    }
    //編集するボタン（show-modal）を押すと呼び出される（A）
    $('.show-modal').on('click', showModal);
});