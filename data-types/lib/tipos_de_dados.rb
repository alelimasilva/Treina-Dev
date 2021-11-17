class TiposDeDados
  def ola_mundo
    return 'Olá Mundo'
  end

  def um_numero
    return 4
  end

  def um_decimal
    return 4.5
  end

  def verdadeiro?
    return true
  end

  def falso?
    return false
  end

  def array_vazio
    array = []
    return array
  end

  def array_com_um_elemento
    array = []
    array.push(1)
    return array
  end

  def array_com_dois_elementos
    array = []
    array.push(1,2)
    return array

  end
end
