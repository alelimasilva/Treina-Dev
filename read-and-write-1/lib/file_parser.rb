class FileParser
    def to_integer(num)
        num.to_i(2)
    end

    def convert(arquivo)
        soma = 0
        File.open(arquivo, "r") do |ponteiro|
            while linha = ponteiro.gets
                soma += linha.to_i(2) 
            end
        end
        return soma
    end
end
