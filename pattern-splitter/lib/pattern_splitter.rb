class PatternSplitter
  def split_pattern(string)
    resultado = []
    parcial = ''
    if string.size <= 10
      resultado << string
      return resultado
    end
    i=2
    loop do
      if i >= string.size
        break
      end
      if string.size % i == 0
        j=0
        loop do
          if parcial.size == string.size/i || parcial.size >= 18
            resultado << parcial
            parcial = ''
          end
          parcial+= string[j]
          j+=1
          if j >= string.size
            resultado << parcial
            return resultado
          end
        end
      end
      i+=1
    end
  end
end
