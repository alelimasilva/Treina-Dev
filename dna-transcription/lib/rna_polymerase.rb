class RnaPolymerase
  DNA= { 
    'A'=>'U' ,
    'T'=>'A' ,
    'G'=>'C' ,
    'C'=>'G' 
   }
  def transcribe(dna, beginning, ending)
    result = ''
    if dna.include?(beginning) && dna.include?(ending) && (beginning != ''|| ending != '')
      a = dna.rpartition(beginning)
      b = a[2].rpartition(ending)
      b[0].each_char do |letter|
        result += DNA[letter]
      end
    else
       return 'Sequence not found'
    end
    result
  end
end
