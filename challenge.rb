
a = 2
b = "catamaran"
c = 12
d = ["correct", "horse", "battery", "staple", "radio", "soap", "penguin"]

if b.length.odd?
  c = c - b.length
  b = d[c]
else
  b = b[a]
  a = b.length
end

d.each do |e|
  if e.length <= 3*a
    b = e
  end
end

b = d[b.length]

puts "1) a=#{a}, b=#{b}, c=#{c}"


# ~~~~~~

def plange foo, bar, baz
  a = -7
  [foo, bar, baz].each do |w|
    if w.length == 3
      return a
    end
    a = 0
    a += w.length
  end
  return a
end

r = plange "cat", "apple", "ball"
puts "2) r=#{r}"

r = plange "main", "number", "pry"
puts "3) r=#{r}"

foo = "main"
bar = "number"
baz = "pry"
r = plange baz, bar, foo
puts "4) r=#{r}"

# d = ["correct", "horse", "battery", "staple", "radio", "soap", "penguin"]
r = plange d.sample, d.sample, "object"
puts "5) r=#{r}"
