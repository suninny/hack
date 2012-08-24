def test
  words =  File.read('test.txt').split.group_by {|w| w }.sort_by{|_, x| x.size}
  p words.last(30).reverse.map{|x,y| [x, y.size]}
end

if __FILE__ == $0
  t1 = Time.now
  test
  puts t2 = Time.now - t1
end
