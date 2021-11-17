class ArrayUtils
  def self.multiplos(qtd, multiplo)
    resultado = []
    i = 1
    loop do
      if(i > qtd)
        break        
      end
      resultado.push(i*multiplo)
      i+=1
    end
    return resultado
  end



  def self.tabuada(numero)
    resultado = []
    i = 1
    loop do
      if(i > numero)
        break
      end
      suporte = []
      j = 1
      loop do
        if(j > 10)
          break
        end
        suporte.push(j*i)
        j+=1
      end
      resultado.push(suporte)
      i+=1
    end
    return resultado
  end
end
