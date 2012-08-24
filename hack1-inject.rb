module Enumerable
  def to_histogram
    freq = inject(Hash.new(0)) { |h,x| h[x]+=1; h}
  end
end

def test
  words = File.read('test.txt').split
  p words.to_histogram.sort_by{|_, n| n}.reverse.first(30)
end

if __FILE__ == $0
  t1 = Time.now
  test
  puts t2 = Time.now - t1
end
