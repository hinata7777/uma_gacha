class UmagachaController < ApplicationController
  def index
    session.delete(:last_results)
  end

  def result
    results = times.times.map do
      number = rand(1..100)

      uma = 
        case number 
        when 100
          "ら〇てくん"
        when 95..99
          ""
        end
        { result: uma }
      end
      session[:last_results] = results
      redirect_to result_path
  end
end
