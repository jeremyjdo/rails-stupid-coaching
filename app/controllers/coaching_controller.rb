class CoachingController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def ask

  end

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      answer_message = ""
    elsif your_message.include?('?')
      answer_message = "Silly question, get dressed and go to work!"
    else
      answer_message = "I don't care, get dressed and go to work!"
    end
    return answer_message
  end

end
