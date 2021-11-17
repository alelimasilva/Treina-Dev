class DoubleStrand
  def complementary_strip(strip)
    strip.each_char.with_index do |letter, index|
      if letter == 'A' 
        strip[index] = 'T'
      elsif letter == 'T' 
        strip[index] = 'A' 
      elsif letter == 'C' 
        strip[index] = 'G' 
      elsif letter == 'G' 
        strip[index] = 'C'
      end
    end
    strip
  end
end
