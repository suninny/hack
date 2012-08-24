def test
  count = Hash.new(0)
  File.read('test.txt').downcase.scan(/[\w']+/) {|word| count[word] += 1 }
  p count.sort_by{|_, x| x}.reverse.first(30)
end

if __FILE__ == $0
  t1 = Time.now
  test
  puts t2 = Time.now - t1
end
