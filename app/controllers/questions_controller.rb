class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @says = params[:ask]
    if @says == 'I am going to work'
      @coach_says = 'Great'
    elsif @says.ends_with?('?')
      @coach_says = 'Silly question, get dressed and go to work!'
    else
      @coach_says = "I don't care, get dressed and go to work!"
    end
  end
end
