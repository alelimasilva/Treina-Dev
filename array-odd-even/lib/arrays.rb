class Arrays
  def self.converte_impares_por(lista, numero)
    resultado = [[],[]]
    lista.each do |num|
      if(num.odd?)
        resultado[0].push(num)
        resultado[1].push(num*numero)
      end
    end
    return resultado
  end

  def self.converte_pares_por(lista, numero)
    resultado = [[],[]]
    lista.each do |num|
      if(num.even?)
        resultado[0].push(num)
        resultado[1].push(num*numero)
      end
    end
    return resultado
  end
end
