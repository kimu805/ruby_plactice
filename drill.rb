# num = 1000
# nums = []

# while num < 10000
#   num_string = num.to_s
#   op = ["*", ""]
#   op_size = op.size
#   op_size.times do |i|
#     op_size.times do |j|
#       op_size.times do |k|
#         form = num_string[3] + op[i] + num_string[2] + op[j] + num_string[1] + op[k] + num_string[0]
#         next if form.match?(/(^|[^0-9])0[1-9]/)
#         if form.length > 4
#           if num == eval(form)
#             nums << num
#           end  
#         end
#       end
#     end
#   end
#   num += 1
# end

# p nums
num = 1000
nums = []

while num < 10000
  num_string = num.to_s
  op = ["*", ""]
  op_size = op.size

  op_size.times do |i|
    op_size.times do |j|
      op_size.times do |k|
        form = num_string[3] + op[i] + num_string[2] + op[j] + num_string[1] + op[k] + num_string[0]

        # "08", "09", "008" などの無効な数値を含む場合はスキップ
        next if form.match?(/(^|[^0-9])0[1-9]/)

        # eval前に10進数として明示的に解釈する
        begin
          result = eval(form).to_i
          nums << num if num == result
        rescue SyntaxError, StandardError
          next
        end
      end
    end
  end

  num += 1
end

p nums
