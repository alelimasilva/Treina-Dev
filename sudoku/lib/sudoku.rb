class Sudoku
  def check(list)
    if(list.size() != 9)
      return false
    end
    for i in list do
      if(i != list.sort[i-1])
        return false
      end
    end
    return true
  end
end
