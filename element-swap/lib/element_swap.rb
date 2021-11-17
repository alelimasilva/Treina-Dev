class ElementSwap
  def switch(letters, instructions)
    instructions = instructions.split()
    i = 0
    suporte = ''
    loop do
      if(i >= instructions.size())
        break
      end
      suporte = letters[instructions[i][0].to_i()]
      letters[instructions[i][0].to_i()] = letters[instructions[i][3].to_i()]
      letters[instructions[i][3].to_i()] = suporte
      i+=1
    end
    return letters
  end
end
