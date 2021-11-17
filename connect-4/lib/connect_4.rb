class Connect4

  def play(actions)
    vencedor = ''
    rodada = 0
    tabuleiro = [[],[],[],[],[],[],[],[]]
    actions.each_line do |i|
      a = (i[-2].to_i) - 1
      tabuleiro[a].append i[0]
      rodada+=1
      if tabuleiro[a].join.include?('XXXX')
        return "Venceu X na rodada #{rodada}, na coluna #{a+1}"
      elsif tabuleiro[a].join.include?('OOOO')
        return "Venceu O na rodada #{rodada}, na coluna #{a+1}"
      end
      x = tabuleiro[a].size - 1
      j=0
      linha = []
      while j < 8
        if tabuleiro[j][x] == nil
          linha << '*'
        else
          linha << tabuleiro[j][x]
        end
        if linha.join.include?('XXXX')
          return "Venceu X na rodada #{rodada}, na linha #{8-x}"
        elsif linha.join.include?('OOOO')
          return "Venceu O na rodada #{rodada}, na linha #{8-x}"
        end
        j+=1
      end
    end
  end
end
