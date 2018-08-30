module Maine
  class Portland
    def self.state
      "Maine"
    end
  end
end

class Portland
  def self.state
    "Bliss"
  end
end

module Oregon
  class Portland
    def self.state
      "Oregon"
    end
  end

  puts Portland.state
end
