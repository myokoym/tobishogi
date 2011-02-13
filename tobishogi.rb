class TobiShogi
  def move(state)
    status = state.split(//)
    8.downto(6) do |i|
      if status[i] == "1"
        if status[i - 3] == "2"
          status[i], status[i - 6] = status[i - 6], status[i]
          return status.join
        end
      end
    end
    8.downto(3) do |i|
      if status[i] == "1"
        if status[i - 3] == "0"
          status[i], status[i - 3] = status[i - 3], status[i]
          return status.join
        end
      end
    end
    status.join
  end
end

