class UmagachaController < ApplicationController
  def index
    session.delete(:uma)
  end

  def result
    number = rand(1..200)
    @uma = 
      case number
      when 1..16
         "ネッシー"
      when 17..32
        "イエティ"
      when 33..48
        "ツチノコ"
      when 49..64
        "河童"
      when 65..80
        "ペガサス"
      when 81..96
        "エイリアン"
      when 97..112
        "クラーケン"
      when 113..128
        "チュパカブラ"
      when 129..144
        "ビッグフット"
      when 145..160
        "モスマン"
      when 161..176
        "ジャージー・デビル"
      when 177..192
        "ユニコーン"
      when 193..197
        "チュパカブラの群れ"
      when 198..199
        "UMAの群れ"
      when 200
        "謎のキメラ"
      end
    session[:uma] = @uma
    redirect_to show_result_path
  end

  def show_result
    @uma = session[:uma] 
    unless @uma
      redirect_to root_path, aleat: "もう一度UMAを探してね!"
    end
  end
end
