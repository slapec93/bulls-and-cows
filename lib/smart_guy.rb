class SmartGuy
  def suggest_a_guess(_previous_guesses, _previous_answers)
    sleep 10
    suggestion = ''
    4.times do
      digit = loop do
        candidate = rand(0..9).to_s
        break candidate unless suggestion.include? candidate
      end
      suggestion += digit
    end

    suggestion
  end
end
