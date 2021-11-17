class Finder
  def index_of(list, value)
    resultado = []
    i = 0 
    loop do
      if(i >= list.size())
        break
      end
      if(list[i].include?(value))
        resultado.push(i)
      end
    i+=1
    end
    return resultado
  end
end
