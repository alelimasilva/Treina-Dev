class Chars
  def unique_quantity(text)
    soma = 0
    text = text.split
    i=0
    loop do
      if(i >= text.size())
        break
      end
      j=0
      while(text[i] !='')
        text[i] = text[i].delete(text[i][0])
        soma+=1
      end
      i+=1
    end
    return soma
  end
end
