class Finder
  def index_of(list, value)
    result = []
    list.each_with_index do |char, index|
      if char.include?(value)
        result << index
      end
    end
    result
  end
end
