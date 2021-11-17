class Word
  def vowels_count(phrase)
    
    phrase.downcase.count "àáaãâèéeẽêiíóôouúy"
  end

  def consonants_count(phrase)
  
    phrase.downcase.count("bcdfghjklmnpqrstvwxzç")
  end
end
