class WindowCleaner
  def clean(levels, windows_per_level, coordinates)
    total = 0 
    coordinates.each_line do |i|
      andarMIN = 0
      andarMAX = levels
      janelasMIN = 0
      janelasMAX = windows_per_level
      i.each_char do |j| 
        if j == 'B'
          andarMAX = andarMAX - ((andarMAX-andarMIN)/2)
        end
        if j == 'T'
          andarMIN = andarMIN + ((andarMAX-andarMIN)/2)
        end
        if j == 'E'
          janelasMAX = janelasMAX - ((janelasMAX-janelasMIN)/2)  
        end
        if j == 'D'
          janelasMIN = janelasMIN + ((janelasMAX-janelasMIN)/2)
        end        
      end 
      if andarMIN == andarMAX-1 && janelasMIN == janelasMAX-1
        if (andarMIN + janelasMIN)% 2 == 0
          total +=1      
        end
      end
    end
    total
  end
end
