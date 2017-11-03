# Write your code here.
katz_deli = []

def take_a_number(line = katz_deli, name)
  line.push(name)
  puts "Welcome, #{name}. You are number #{line.index(name) + 1} in line."
end

def now_serving(line = katz_deli)
  if line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line[0]}."
    katz_deli.shift
  end
end

def line(deli_line = katz_deli)
  response = "The line is currently"
  if deli_line.length == 0
    puts "#{response} empty."
  else
    str = ":"
    deli_line.each_with_index do |name, idx|
      str += " #{idx + 1}. #{name}"
    end
    puts "#{response}#{str}"
  end
end
