class ElementSwap
  def switch(letters, instructions)
    instructions.split.each do |index|
      value = index.split("<>")

      letters[value[0].to_i], letters[value[1].to_i] = letters[value[1].to_i], letters[value[0].to_i]
    end
    letters
  end
end
