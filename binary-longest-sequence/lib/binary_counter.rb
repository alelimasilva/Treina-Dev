class BinaryCounter
  def read(values_sequence)
    resultado = ''
    values = []
    values_sequence.split('-').each do |number|
      values << "%b" % number.to_i()
    end
    values.each do |value|
      i=0 
      total = 0
      while i < (value.size)
        j=0
        x = ''
        while j <= i
          x += value[-1]
          j+=1
        end
        if value.include?(x)
          total = j
        end 
        i+=1  
      end
      resultado << total.to_s
    end
    resultado
  end
end

