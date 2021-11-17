class Arrays
  def self.multiplica_antecessor_predecessor(array)
    resultado = []
    i=0
    loop do
      if(i >= array.size())
        break
      end
      if(i == 0)
        resultado.push(array[i] * array[i+1])
      elsif(i == (array.size()-1))
        resultado.push(array[i] * array[i-1])
      else
        resultado.push(array[i-1] * array[i+1])
      end
      i+=1     
    end
    return resultado
  end
end
