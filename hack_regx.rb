def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end

raw_text = File.read("test.txt")
word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by {|_, count| count}
top = sorted.reverse.first(30)
puts top.map { |x| x.join(': ')}
