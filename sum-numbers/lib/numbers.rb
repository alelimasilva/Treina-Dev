class Numbers
  def sum_text(numbers_text)
    i = 0
    soma = 0
    num = numbers_text.split()
    loop do 
      if(i >= num.size())
        return soma
      end
      soma = soma + num[i].to_i()
      i = i + 1
    end
  end
end

