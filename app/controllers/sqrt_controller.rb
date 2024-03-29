class SqrtController < ApplicationController
  def input
  end

  def view
    a = params[:v].to_i
    @guesses = [a]
    epsilon = 0.001

    loop do
      next_guess = 0.5 * (@guesses.last + a / @guesses.last)
      @guesses << next_guess
      break if (next_guess * next_guess - a) / a < epsilon
    end
    @guesses
  end
end
