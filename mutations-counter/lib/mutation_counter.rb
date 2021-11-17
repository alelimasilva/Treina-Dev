class MutationCounter
  def calculate(dna_collection)
    resultado = 0
    parcial = 0
    dna_collection.each do |pair|
      pair[0].each_char.with_index do |char, index|
        if char != pair[1][index]
          parcial+=1
        end 
      end
      if parcial > resultado
        resultado = parcial
      end
      parcial = 0
    end
    resultado
  end
end
