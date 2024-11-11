class QuestionsController < ApplicationController

  def ask
    # @questions = ["I am going to work",""]
  end

  def answer
    @questionAsked = params[:question]
    @answer = "I don't care, get dressed and go to work!"

    if @questionAsked == "I am going to work"
      @answer = "Great!"
      return @answer
    elsif @questionAsked.last == "?"
      @answer = "Silly question, get dressed and go to work!"
      return @answer
    end
  end

end
