class UmagachaController < ApplicationController
  def index
    session.delete(:uma)
  end

  def result
    number = rand(1..100)
    @uma = 
      case number
      when 1..8
         "ネッシー"
      when 9..16
        "イエティ"
      when 17..24
        "ツチノコ"
      when 25..32
        "河童"
      when 33..40
        "ペガサス"
      when 41..48
        "エイリアン"
      when 49..56
        "クラーケン"
      when 57..64
        "チュパカブラ"
      when 65..72
        "ビッグフット"
      when 73..80
        "モスマン"
      when 81..88
        "ジャージー・デビル"
      when 89..96
        "ユニコーン"
      when 97..99
        "チュパカブラの群れ"
      when 100
        "UMAの群れ"
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
