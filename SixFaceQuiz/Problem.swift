import Foundation

class Problem{
    var problems = [
        ( character: 1, level : 1, t_or_i: 0, text: "おそ松は6つ子の何番目？", choise1: "長男", choise2: "次男", choise3: "三男", choise4: "四男", answer: 1 ,note: ""),
        ( character: 1, level : 1, t_or_i: 0, text: "おそ松は何色パーカー？", choise1: "青", choise2: "赤", choise3:"緑",  choise4:"紫", answer: 2 ,note: ""),
        ( character: 1, level : 1, t_or_i: 0, text: "おそ松は声優は？", choise1: "入野 自由", choise2: "中村 悠一", choise3: "櫻井 考宏", choise4: "神谷 浩史", answer: 3 ,note: ""),
        ( character: 2, level : 1, t_or_i: 0, text: "カラ松は声優は？", choise1: "入野 自由", choise2: "神谷 浩史", choise3: "櫻井 考宏", choise4: "中村 悠一", answer: 4 ,note: ""),
        ( character: 2, level : 1, t_or_i: 0, text: "カラ松のカラコンの色は？", choise1: "水色", choise2: "青", choise3: "黒", choise4: "茶色", answer: 4 ,note: ""),
        ( character: 2, level : 1, t_or_i: 0, text: "カラ松はパーカーの色は？", choise1: "赤", choise2: "緑", choise3: "青", choise4: "緑", answer: 3 ,note: ""),
        ( character: 3, level : 1, t_or_i: 0, text: "チョロ松はパーカーの色は？", choise1: "緑", choise2: "ピンク", choise3: "紫", choise4: "黄色", answer: 1 ,note: ""),
        ( character: 4, level : 1, t_or_i: 0, text: "一松はパーカーの色は？", choise1: "緑", choise2: "ピンク", choise3: "赤", choise4: "紫", answer: 4 ,note: ""),
        ( character: 1, level : 1, t_or_i: 0, text: "アニメ化して最初のセリフ言ったのは？", choise1: "おそ松", choise2: "カラ松", choise3: "チョロ松", choise4: "トド松", answer:  1,note: "たいへんだ〜！たいへんだ〜！"),
        ( character: 1, level : 2, t_or_i: 0, text: "一話で一番右に正座していたのは？", choise1: "おそ松", choise2: "カラ松", choise3: "十四松", choise4: "トド松", answer:  1,note: "1話参照"),
        ( character: 1, level : 1, t_or_i: 0, text: "おそ松の通り名は？", choise1: "ビューティジーニアス", choise2: "爽やかジャスティス", choise3: "肉を肉で巻いて食べる肉食系肉", choise4: "ミステリアスクール", answer:  2,note: "ラブレターを受け取ってたザンス"),
        ( character: 1, level : 2, t_or_i: 0, text: "巨人に対して、おそ松『よう◯◯年ぶりだな』", choise1: "25年", choise2: "27年", choise3: "29年", choise4: "37年", answer: 2 ,note: "このアニメ...今日で最終回だ..."),
        ( character: 1, level : 1, t_or_i: 0, text: "おそ松はポーカーでどの手で勝った？", choise1: "ストレートフラッシュ", choise2: "ロイヤルストレートフラッシュ", choise3: "4カード", choise4: "5カード", answer:  4,note: "おそ松『かーらーのー◯◯だ！』"),
        ( character: 1, level : 1, t_or_i: 0, text: "にゃーちゃんに言ったセリフは？", choise1: "会いに来たぞ！レイカ！", choise2: "愛してるよ！レイカ！", choise3: "愛してるぞ！レイカ！", choise4: "愛してんぞ！レイカ！", answer: 3 ,note: "握手会での一言だったよ〜〜〜ん"),
        ( character: 1, level : 2, t_or_i: 0, text: "おそ松がハイブリットおでんで最初に頼む飲み物は？", choise1: "日本酒", choise2: "焼酎", choise3: "ビール", choise4: "水", answer: 3 ,note: "一杯だけだぞ！"),
        ( character: 1, level : 3, t_or_i: 0, text: "おそ松が一人でおでん屋に行ったときの払った金額は？", choise1: "13円", choise2: "11円", choise3: "8円", choise4: "5円", answer: 3,note: "帰る！！！！！")
        /*
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 1, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 2, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 3, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 4, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 5, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: 6, level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: ""),
        ( character: , level : , text: "", choise1: "", choise2: "", choise3: "", choise4: "", answer:  ,note: "")
        */
    ]
    
}