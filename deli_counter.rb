katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    message = "The line is currently:"
    katz_deli.each_with_index do |name, number|
      message += " #{number.to_i + 1}. #{name}"
    end
    puts "#{message}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name 
  place_in_line = katz_deli.length
  puts "Welcome, #{name}. You are number #{place_in_line} in line."
end

def now_serving(line)
  if line.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{line.first}."
  end
  line = line.shift
end

puts now_serving(katz_deli)
puts katz_deli