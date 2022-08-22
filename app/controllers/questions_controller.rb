class QuestionsController < ApplicationController
  def ask
  end

  def answer
    exit_message = 'I am going to work right now!'
    if params[:answer].include?('?')
      @answer = 'You FOOL that was a foolish question, get dressed and go to work!'
    elsif params[:answer] == exit_message
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
