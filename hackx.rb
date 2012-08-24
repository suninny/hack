require 'ap'
module Enumerable
  def to_histogram
    freq = inject(Hash.new(0)) { |h,x| h[x]+=1; h}
  end
end


def draw_graph(list, char="#")
  pairs = []
  list.collect {|x| pairs << x}
  #ap pairs[0]
  largest_key_size = list.max_by {|w,_| w.size}[0].size
  pairs.inject("") do |s,kv|
    s << "#{kv[0].ljust(largest_key_size)} |#{char*kv[1]}\n"
  end
end

def test
  words = File.read('mini.txt').split()
  top30 = words.to_histogram.sort_by{|_, n| n}.reverse.first(30)
  puts draw_graph(top30)
end

if __FILE__ == $0
  t1 = Time.now
  test
  puts t2 = Time.now - t1
end
