;; anbt-add-both-center-guides.scm
;; Script-Fu: 水平・垂直それぞれの中心を示すガイドを追加 | anobota
;; http://haraita9283.blog98.fc2.com/blog-entry-126.html

(define (script-fu-anbt-add-both-center-guides img drw)
  (gimp-image-undo-group-start img) ; アンドゥしたらここに戻る
  
  ;; パーセントを指定してガイド追加
  (script-fu-guide-new-percent img drw 0 50) ; 横
  (script-fu-guide-new-percent img drw 1 50) ; 縦
  
  (gimp-image-undo-group-end img) ; ここまでがアンドゥの対象
  )

;; ******** ******** ******** ********

(script-fu-register
  "script-fu-anbt-add-both-center-guides"
  "/Script-Fu/misc/中央ガイド" ; このスクリプトのメニュー位置
  "水平・垂直それぞれの中心を示すガイドを追加" ; このスクリプトの説明
  "sonota88" ; 作者名
  "(c) 2007" ; コピーライト
  "2007-07-14" ; 日付
  "RGB*, GRAY*, INDEXED*"  ; スクリプトが動作可能なモード
  SF-IMAGE "Image" 0       ; 引数1
  SF-DRAWABLE "Drawable" 0 ; 引数2
  )
