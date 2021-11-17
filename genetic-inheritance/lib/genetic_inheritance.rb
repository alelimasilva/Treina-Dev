class GeneticInheritance
  def predict_proportions(first_individual, second_individual)
    result = []
    first_individual.each_char do |a|
      second_individual.each_char do |b|
        if (a == a.downcase && b == b.upcase) && !result.include?([(a.upcase+b.downcase), 0])
          result << [(a.upcase+b.downcase), 0]
        elsif !result.include?([(a+b), 0]) && !(a == a.downcase && b == b.upcase)
          result << [(a+b), 0]
        end
      end
    end
    case result.size
    when 1
      result[0][1] = 1.to_r
    when 2 
      result[0][1] = 1/2.to_r
      result[1][1] = 1/2.to_r
    else
      if first_individual == second_individual
      result[0][1] = 1/4.to_r
      result[1][1] = 1/2.to_r
      result[2][1] = 1/4.to_r
      end
    end
    result
  end
end
