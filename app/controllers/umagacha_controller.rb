class UmagachaController < ApplicationController
  UMA_LIST = [
    { name: "ネッシー", range: 200..400, probability: 1..16 },
    { name: "イエティ", range: 250..600, probability: 17..32 },
    { name: "ツチノコ", range: 30..100, probability: 33..48 },
    { name: "河童", range: 50..150, probability: 49..64 },
    { name: "ペガサス", range: 200..500, probability: 65..80 },
    { name: "エイリアン", range: 100..1000, probability: 81..96 },
    { name: "クラーケン", range: 500..700, probability: 97..112 },
    { name: "チュパカブラ", range: 200..550, probability: 113..128 },
    { name: "ビッグフット", range: 250..700, probability: 129..144 },
    { name: "モスマン", range: 350..700, probability: 145..160 },
    { name: "ジャージーデビル", range: 400..850, probability: 161..176 },
    { name: "ユニコーン", range: 250..500, probability: 177..192 },
    { name: "チュパカブラの群れ", range: 1000..2000, probability: 193..197 },
    { name: "UMAの群れ", range: 3000..5000, probability: 198..199 },
    { name: "謎のキメラ", range: 9000..9999, probability: 200..200 },
    { name: "ケセランパセラン", range: 1..20, probability: 200..216 },
    { name: "シャドーピープル", range: 200..500, probability: 217..232 },
    { name: "スカイフィッシュ", range: 20..80, probability: 233..248 },
    { name: "フロッグマン", range: 50..200, probability: 249..264 },
    { name: "リザードマン", range: 350..600, probability: 265..280 },
    { name: "南極ゴジラ", range: 800..1000, probability: 281..296 },
    { name: "翼猫", range: 5..30, probability: 297..312 },
    { name: "ゴートマン", range: 450..750, probability: 313..328 },
    { name: "ジャッカロープ", range: 20..50, probability: 329..344 },
    { name: "シーサーペント", range: 400..700, probability: 345..360 },
    { name: "マーメイド", range: 50..200, probability: 361..362 },
    { name: "68期の妖精さん", range: 9999..9999, probability: 363..363 }
  ].freeze

  def index
    session.delete(:uma)
    session.delete(:power)
  end

  def result
    number = rand(1..363)
    selected_uma = UMA_LIST.find { |uma| uma[:probability].include?(number) }

    @uma = selected_uma[:name]
    @power = rand(selected_uma[:range])

    # セッションに保存
    session[:uma] = @uma
    session[:power] = @power

    redirect_to show_result_path
  end

  def show_result
    @uma = session[:uma]
    @power = session[:power]
    unless @uma
      redirect_to root_path, alert: "もう一度UMAを探してね!"
    end
  end
end