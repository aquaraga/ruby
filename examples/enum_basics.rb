require 'Set'

#h = { 1 => 4, 2 => 3, 6 => 5, 3 => 4 }
#print("#{h.all? {|k,v| (k + v) > 4}}")
#print("#{h.entries.inspect}\n")
#a = h.entries
#print("#{a}")
#print("#{a.map{|x| x.max}}")

#b = [1,2,3,4,5,6,7,8]
#print("#{b.zip(b.reverse)}")
#print("#{b.partition{|x| x > 4}.at(0)}")
#print("#{b.slice(4, 7)}")


sentence = 'the quick brown fox jumps over the lazy dog'
h = Hash::new(0)
#sentence.split(' ').each do |w|
#  h.member?(w) ? h[w] = h[w] + 1 : h[w] = 1
#end
#h.each {|k,v| puts("#{k} --> #{v}\n") }


#sentence.split(' ').each do |x|
#  h[x] += 1
#end
#h.each {|k,v| puts("#{k} --> #{v}\n") }

#ass_arr = sentence.split(' ').map {|x| [x,1]}.each do |x, y|
#  (h[x] ||= []).push(y)
#end
#h.each {|k,v| puts("#{k} --> #{v.count}\n") }


my_set = Set::new([1,2,1.3,'Hello',3.14,false, true])
my_set.classify {|x| x.class}.each do |x, y|
    puts("#{x} => #{y.to_a.join(', ')}")
end


