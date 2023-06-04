OPERATIONS = %w[+ - / *].to_set

def eval_rpn(tokens)
  stack = []
  tokens.each do |item|
    next stack << item.to_i if !OPERATIONS.include?(item)

    val2, val1 = stack.pop, stack.pop
    stack << val1.to_f.send(item, val2).to_i
  end

  stack[0]
end

tokens = ["4","13","5","/","+"]
puts "result: #{eval_rpn(tokens)}"
