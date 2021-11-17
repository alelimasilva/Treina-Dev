class Pagamento
  attr_accessor :quantidade, :produto, :preco, :valor
  def initialize(quantidade: 0, produto: 'Sem nome', preco: 0)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
    @valor = calcular_valor()
  end

  def calcular_valor()
    @quantidade * @preco
  end

  def aplicar_desconto(desconto)
    @valor -= desconto
  end

end
