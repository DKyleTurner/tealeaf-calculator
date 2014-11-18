def calc
  print 'First number in calculation: '
  first_value = gets.chomp

  print 'Operator to be used (+, -, *, /): '
  operator = gets.chomp

  print 'Second number in calculation: '
  second_value = gets.chomp

  case operator
    when '+'
      puts "=> #{first_value} + #{second_value} = #{first_value.to_f + second_value.to_f}"
    when '-'
      puts "=> #{first_value} - #{second_value} = #{first_value.to_f - second_value.to_f}"
    when '*'
      puts "=> #{first_value} * #{second_value} = #{first_value.to_f * second_value.to_f}"
    when '/'
      puts "=> #{first_value} / #{second_value} = #{first_value.to_f / second_value.to_f}"
    else
      puts 'Please choose a valid operation.'
  end

  print "Run another calculation? Type 'yes' or 'no' "
  repeat_calc = gets.chomp

  if repeat_calc == 'yes'
    calc
  else
    puts 'Goodbye'
  end
end

puts "Run calculations? Type 'yes' or 'no'"
calc_start = gets.chomp

unless calc_start != 'yes'
  calc
end