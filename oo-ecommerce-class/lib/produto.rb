class Produto
    attr_accessor :nome, :categoria, :preco, :estoque
    def initialize(nome: 'Vazio', categoria: 'Geral', preco: 0, estoque: 0)
        @nome = nome
        @categoria = categoria
        @preco = preco
        @estoque = estoque
    end
end
