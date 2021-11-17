class JogoDaVelha

  def play(actions)
    vitoriaO = 0
    vitoriaX = 0
    table = []
    actions.each_line do |i| 
      a = i[-4] + i[-3] + i[-2]
      table[calcula_posicao(a)] = i[0]
      if table.values_at(0,1,2).count(i[0]) == 3 || table.values_at(3,4,5).count(i[0]) == 3 || table.values_at(6,7,8).count(i[0]) == 3
        table = []
        if i[0] == 'X'
          vitoriaX+=1
        else
          vitoriaO+=1
        end
      elsif table.values_at(0,3,6).count(i[0]) == 3 || table.values_at(1,4,7).count(i[0]) == 3 || table.values_at(2,5,8).count(i[0]) == 3
        table = []
        if i[0] == 'X'
          vitoriaX+=1
        else
          vitoriaO+=1
        end
      elsif table.values_at(0,4,8).count(i[0]) == 3 || table.values_at(2,4,6).count(i[0]) == 3
        table = []
        if i[0] == 'X'
          vitoriaX+=1
        else
          vitoriaO+=1
        end
      elsif table.count('XO') == 9
        table = []
      end
    end
    if vitoriaO == vitoriaX
      return 'Empate'
    end
    if vitoriaO > vitoriaX
      return "O venceu com #{vitoriaO} vitórias"
    end
    if vitoriaX > vitoriaO
      return "X venceu com #{vitoriaX} vitórias"
    end
  end

  def calcula_posicao(a)
    if a[0] == '0'
      return a[0].to_i+ a[2].to_i
    elsif a[0] == '1'
      return a[0].to_i+ a[2].to_i + 2
    elsif a[0] == '2'
      return a[0].to_i+ a[2].to_i + 4
    else 
      return nil
    end
  end
end
