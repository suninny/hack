#ruby1.8.4@win32: 5.63, 97M(;4.98s, 69M)
#ruby1.8.5@cygwin: 4.77s, 93M(3.84s, 95M;3.16s, 68M)
#ruby1.8.5@ubuntu: 3.78s, 91M (3.36s, 91M;3.10s,64M)
#ruby1.8.5@mingw:4.807s,
#--------CD@3.34Ghz------------
#ruby1.8.7@ubuntu:3.10s,91M
#ruby1.9.1.20081030@ubuntu: 3.10s, 51M
#
def test
  count = Hash.new(0)
  File.read('test.txt').split.each {|word| count[word] += 1 }
  p count.sort_by{|_, x| x}.reverse.first(30)
end

if __FILE__ == $0
  t1 = Time.now
  test
  puts t2 = Time.now - t1
end
