class LargestInteger
  def find(array)
    resultado = []
    array.each do |a|
      x = a.permutation().to_a
      total = 0
      x.each do |i|
        parcial = ''
        i.each do |j|
          parcial += j.to_s()  
          if parcial.to_i() > total
            total = parcial.to_i()
          end
        end
      end
      resultado << total
    end
    resultado
  end
end
