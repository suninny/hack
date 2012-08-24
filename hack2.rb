histo = Hash.new(0)
for line in open("test.txt")
  for word in line.split
    histo[word] += 1
  end
end
p histo.sort_by{|_, w| w}.reverse.first(30)
