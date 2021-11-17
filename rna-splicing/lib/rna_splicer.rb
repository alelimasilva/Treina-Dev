class RnaSplicer
  def splice(rna, introns)
    introns.each do |i|
      rna = rna.remove(i)
    end
    rna
  end
end
