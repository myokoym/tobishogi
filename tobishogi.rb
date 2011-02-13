class Array
  def each_with_index_reverse
    count = self.size - 1
    self.reverse.each do |item|
      yield item, count
      count -= 1
    end
  end
end

class TobiShogi
  def move(status)
    status.split(//).each_with_index_reverse do |v, i|
      if v == "1"
        if status[i - 3] == 1
          status[i], status[i - 6] = status[i - 6], status[i]
        elsif status[i - 3] == 0
          status[i], status[i - 3] = status[i - 3], status[i]
        end
      end
    end
    status.join
  end
end

