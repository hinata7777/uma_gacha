class UmagachaController < ApplicationController
  def index
    session.delete(:last_results)
  end

  def result
    number = rand(1..15)
    uma = 
      case number 
      when 1
         "ネッシー"
      when 2
        "イエティ"
      when 3
        "ツチノコ"
      when 4
        "河童"
      when 5
        "ペガサス"
      when 6
        "エイリアン"
      when 7
        "クラーケン"
      when 8
        "チュパカブラ"
      when 9
        "ビッグフット"
      when 10
        "モスマン"
      when 11
        "ジャージー・デビル"
      when 12
        "イッシー"
      end
    { result: uma }
    session[:last_results] = result
    redirect_to result_path
  end
end
