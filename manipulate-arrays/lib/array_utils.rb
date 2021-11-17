class ArrayUtils
  def self.compara(lista1, lista2)
    if(lista1.size() != lista2.size())
      return false
    end
    i=0
    loop do
      if(i >=lista1.size())
        break
      end
      if(lista1.sort()[i] != lista2.sort()[i])
        return false
      end
      i+=1
    end
    return true
  end

  def self.divisiveis(numero1, numero2)
    resultado = [[],[],[]]
    i=0
    loop do
      if(i > 50)
        break
      end
      if(i>= numero1 && i>=numero2 && i%numero1 == 0 && i%numero2 == 0)
        resultado[0].push(i)
      elsif(i>=numero1 && i%numero1 == 0)
        resultado[1].push(i)
      elsif(i>=numero2 && i%numero2 == 0)
        resultado[2].push(i)
      end
      i+=1
    end
    return resultado
  end

  def self.soma(lista)
    return lista.sum()
  end

  def self.combinar(lista1, lista2)
    i=0
    resultado = []
    loop do
      if(i >= lista1.size())
        break
      end
      j=0
      loop do
        if(j >= lista2.size())
          break
        end
        resultado.push([lista1[i], lista2[j]])
        j+=1
      end
      i+=1
    end
    return resultado
  end
end
