some_var = "false"
another_var = "nil"
case
when some_var == "pink elephant" # fails because the var does not equal "pink elephant"
    puts "Don't think about the pink elephant!"
  when another_var.nil? # fails because the var does not equal nil, to fix, remove quotes
    puts "Question mark in the method name?"
  when some_var == false # fails for same reasno as above, remove quotes
    puts "Looks like this one should execute"
  else
    puts "I guess nothing matched... But Why?"
end
