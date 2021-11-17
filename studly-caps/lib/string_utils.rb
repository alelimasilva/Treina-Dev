class StringUtils
  def wavefy(string)
    i = 0
    loop do
      if (i >= string.size())
        return string
      end
      if (i % 2 == 0)
        string[i] = string[i].downcase()
      else
        string[i] = string[i].upcase()
      end
      i = i + 1
    end
  end
  
end

