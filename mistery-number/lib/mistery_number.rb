class MisteryNumber
  def calculate(operation)
    a = operation.split()
    operandos = []
    resultado = a.last().to_i()
    incognita = 0
    i = 0
    posicao_incognita = 0
    loop do
      if (a[i] == '=')
        break
      end
      if(a[i] == '?')
        a[i] = incognita.to_s()
        posicao_incognita = i
      end
      operandos.push(a[i])
      i = i + 1
    end
    loop do
      if(eval(operandos.join()) == resultado)
        return incognita
      end
      incognita = incognita + 1
      operandos[posicao_incognita] = incognita.to_s()     
    end
  end
end
