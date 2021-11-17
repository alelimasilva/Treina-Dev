class RockPaperScissors
  def play(actions)
    empates = 0
    vitoriaA = 0
    vitoriaB = 0
    actions.each_line do |i|

      puts i
      if i.start_with?('papel') && i.chop.end_with?('pedra')
        vitoriaA+=1
      elsif i.start_with?('papel') && i.chop.end_with?('tesoura')
        vitoriaB+=1
      elsif i.start_with?('pedra') && i.chop.end_with?('papel')
        vitoriaB+=1
      elsif i.start_with?('pedra') && i.chop.end_with?('tesoura')
        vitoriaA+=1
      elsif i.start_with?('tesoura') && i.chop.end_with?('papel')
        vitoriaA+=1
      elsif i.start_with?('tesoura') && i.chop.end_with?('pedra')
        vitoriaB+=1
      else
        empates+=1
      end
    end
      resultado = ''
      if empates != 0
        resultado = resultado + 'Empates: '+ empates.to_s + ' | '
      end
      if vitoriaA != 0
        resultado = resultado + 'Jogador A: '+ vitoriaA.to_s + ' | '
      end
      if vitoriaB != 0
        resultado = resultado + 'Jogador B: '+ vitoriaB.to_s + ' | '
      end
      resultado.delete_suffix(' | ')
  end
end
