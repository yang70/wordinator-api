class WordinatorController < ApplicationController

  def index
    @word_one, @word_two = params[:one], params[:two]
    result = is_anagram?(@word_one, @word_two)
    render json: { anagram: result,
                   one: @word_one,
                   two: @word_two}
  end

  private

  def is_anagram?(word_one, word_two)
    if (word_one.downcase.chars.sort.join == word_two.downcase.chars.sort.join)
      true
    else
      false
    end
  end
end
