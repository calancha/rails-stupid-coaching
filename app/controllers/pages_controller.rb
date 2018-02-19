class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      case @question.downcase
      when 'i am going to work'
        @answer = 'Great!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end             
    end
  end
end
