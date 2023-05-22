class QuestionsController < ApplicationController


  def home
  end

  def ask
    @question = params[:question]
  end

  def answer
    @answer = ''
    if params[:question].include?('?')
      return @answer = "Silly question, get dressed and go to work!"
    elsif params[:question]== "I am going to work"
      return @answer =  "Great!"
    else
      return @answer = " I don't care, get dressed and go to work!"
    end
  end
end
