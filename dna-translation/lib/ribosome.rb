class Ribosome
  DNA= { 
    'A'=>'U' ,
    'U'=>'A' ,
    'G'=>'C' ,
    'C'=>'G' 
   }
   RNAt= { 
    'UCA'=>'aa1-' ,
    'AAC'=>'aa2-' ,
    'UUU'=>'aa3-' ,
    'AAA'=>'aa4-' ,
    'AUC'=>'aa5-' ,
    'CCA'=>'aa6-' ,
    'GGU'=>'aa7-' ,
    'GCC'=>'aa8-'
   }
  def translate(rna_messenger)
    parcial = ''
    rna_messenger.each_char do |letter|
      parcial += DNA[letter]
    end
    i=0
    resultado = ''
    while i <= parcial.size-2
      begin 
        a = ''
        a += parcial[i] + parcial[i+1] + parcial[i+2]
        resultado+= RNAt[a]
      rescue
        return 'Translation aborted'
      end
      i+=3       
    end
    resultado.delete_suffix('-')
  end
end
