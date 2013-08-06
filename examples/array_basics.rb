#c = Array.new(10, Array::new)
#d = Array::new
#c.push('hello')
#c.push('hi')
## puts("c is #{c.inspect}")
#
#d = [1, 2, 3, 4, 5, 6]
#puts("#{d[1..4]}")
#puts("#{d[-3..-1]}")
#puts("#{d.values_at(1..3,5)}")
#puts("#{d.last(3)}")
#puts("#{d.fetch(10){|i| i}}")

#a = Array.new(10)
#puts("Original array: #{a}\n")
#a.push('Hi')
#a << 'Hello'
#puts("#{a}")
#puts("#{a.pop}")
#puts("#{a}")
#a.shift
#a.push('Hi')
#a.push('Hoot')
#puts("#{a}")
#a.compact!
#a.uniq!
#puts("#{a}")

#b = [1,2,3,4,5,6,7,8]
#b.delete_at(2)
#puts("#{b}")
#b.delete_if {|x| x > 6}
#puts("#{b}")
#b.map! {|x| x * 10}
#puts("#{b}")
#b.fill('Hoot', 1)
#puts("#{b}")

e = Array.new(10)
e.fill(0..9) {|id| id % 5}
puts("#{e}")
e.uniq!.delete_if {|x| x > 3}
puts("#{e.join(' ')}")

