class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    case @question.downcase
    when 'hello'
      @answer = 'hello'
    when 'what time is it?'
      @answer = 'The same time that yesterday at the same moment.'
    else
      @answer = "I don't know it"
    end
  end
end
