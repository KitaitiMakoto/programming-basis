(* 駅名（漢字の駅名、ひらがなの駅名、ローマ字の駅名、駅が所属する路線名）を表す型 *)
type ekimei_t = {
  kanji : string;   (* 漢字の駅名 *)
  kana : string;    (* ひらがなの駅名 *)
  romaji : string;  (* ローマ字の駅名 *)
  shozoku : string; (* 所属する路線名 *)
}


(* 目的：駅名のデータ ekimei_t を受け取り「路線名，駅名（かな）」の形の文字列を返す *)
(* hyoji : ekimei_t -> string *)
let hyoji ekimei = match ekimei with
  {kanji = kj; kana = kn; romaji = r; shozoku = s} ->
    s ^ "，" ^ kj ^ "（" ^ kn ^ "）"

(* テスト *)
let test1 = hyoji {kanji = "茗荷谷"; kana = "みょうがだに"; romaji = "myogadani"; shozoku="丸ノ内線"} = "丸ノ内線，茗荷谷（みょうがだに）"


(* 駅間（起点の駅名、終点の駅名、経由する路線名、距離、所要時間）を表す型 *)
type ekikan_t = {
  kiten : string;  (* 起点の駅名 *)
  shuten : string; (* 終点の駅名 *)
  keiyu : string;  (* 経由する路線名 *)
  kyori : float;   (* 二駅間の距離。km *)
  jikan : int;     (* 所要時間。分 *)
}
