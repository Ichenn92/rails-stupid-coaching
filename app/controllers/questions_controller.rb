class QuestionsController < ApplicationController

  def ask; end

  def answer
    if params[:question]
      @question = params[:question] 
      @answer = coach_logic_answer(@question)
    end
  end

  private

  def coach_logic_answer(question)
    if question.end_with? '?'
      return "Silly question, get dressed and go to work!"
    elsif question == "I am going to work"
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end
