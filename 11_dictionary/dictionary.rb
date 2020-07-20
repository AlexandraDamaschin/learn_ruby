class Dictionary
  def entries
    @entries ||= {}
  end

  def add(name, value = nil)
    entries[name] = value
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    entries.keys.include? word
  end

  def find(partial_word)
    result = {}
    entries.each_pair do |key, definition|
      result[key] = definition if key =~ /^#{partial_word}/
    end
    result
  end

  def printable
    entries.map do |key_val|
      %([#{key_val.first}] "#{key_val.last}")
    end.sort.join("\n")
  end
end