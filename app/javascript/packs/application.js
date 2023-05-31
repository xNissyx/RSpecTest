// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import $ from 'jquery';
global.$ = global.jQuery = $;
// このコードはまず jquery モジュールから $ をインポートします。
// その後、グローバルな $ と jQuery の両方を jQuery に紐づけます。
// これにより、 $ や jQuery を使ったコードがグローバルスコープで実行可能になります。
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import Raty from "raty.js";
window.raty = function(elem,opt) {
  let raty =  new Raty(elem,opt)
  raty.init();
  return raty;
}
// ＜windowオブジェクト＞
// 画面上に表示されているすべてのオブジェクトの親となるオブジェクト
// JavaScriptのオブジェクト階層の最上位に位置する。
// ウィンドウに関する情報の取得や、ウィンドウを設定・操作する。
// => **<script>と</script>の間では省略できる。**

// ＜** Object.keys() メソッド**＞
// オブジェクトのプロパティを取得するために使うもの.

// <function>
// function(関数)とは、様々な処理を1つにまとめて、名前をつけることができるもの

Rails.start()
Turbolinks.start()
ActiveStorage.start()
