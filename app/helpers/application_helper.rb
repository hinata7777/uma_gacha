module ApplicationHelper
  def uma_description(name)
    descriptions = {
      "ネッシー" => "スコットランド・ネス湖に棲むとされる恐竜型の水棲生物",
      "イエティ" => "ヒマラヤ山脈にいるという白い体毛を持つUMA",
      "ツチノコ" => "日本で古くから語られる、胴体が太く短いヘビ型UMA",
      "河童" => "日本の伝説に登場する水の妖怪。川や池に住み、頭に水が入った皿をもつ。",
      "ペガサス" => "ギリシャ神話に登場する、空を飛ぶ力を持つ象徴的な神獣",
      "エイリアン" => "地球外から来たとされる知的生命体",
      "クラーケン" => "北欧の伝説に登場する巨大な海の怪物",
      "チュパカブラ" => "中南米で家畜を襲うとされる吸血生物",
      "ビッグフット" => "北米の森に住むとされる大型類人猿",
      "モスマン" => "アメリカ・ウェストバージニア州で目撃された翼を持つ人型の生物",
      "ジャージーデビル" => "アメリカ・ニュージャージー州に現れる怪物。馬の頭と翼を持つ。",
      "ユニコーン" => "伝説上の生き物で、馬のような体に一本の螺旋状の角を持っている。",
      "チュパカブラの群れ" => "逃げろ。殺される。",
      "UMAの群れ" => "UMA大集合!やったね!",
      "謎のキメラ" => "既視感があるキメラ生物。おっと、誰か来たようだ。",
      "ケセランパセラン" => "白くてふわふわした綿毛状のUMA。持っていると幸せになる。",
      "シャドーピープル" => "アメリカを中心に報告されている、人の形をした黒い影",
      "スカイフィッシュ" => "空中を高速で飛び回る細長い魚のような形のUMA",
      "フロッグマン" => "アメリカで目撃された、カエルのような外見を持つ人型UMA",
      "リザードマン" => "人間のような体にトカゲの特徴を持つ爬虫類型UMA",
      "南極ゴジラ" => "南極の氷に潜むとされる巨大爬虫類型UMA",
      "翼猫" => "猫の背中に翼が生えた姿で目撃される幻想的なUMA",
      "ゴートマン" => "ヤギの頭部と人間の体を持つ獣人型UMA",
      "ジャッカロープ" => "ウサギの体にシカのような角を生やした北米の民間伝承に登場するUMA",
      "シーサーペント" => "海を泳ぐ巨大な蛇のような姿をした海洋型UMA",
      "マーメイド" => "人間の上半身と魚の下半身を持つ水中のUMA",
      "68期の妖精さん" => "昼時間に68期のバディ部屋で目撃される人型UMA"
    }
    descriptions[name] || "謎のUMAです。"
  end
end

