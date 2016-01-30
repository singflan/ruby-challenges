puts "Give me a number:"
user_num = gets.to_i

def always_3 (user_num)
    num = (((((user_num + 5) * 2) - 4) / 2) + user_num)
end

final_num = always_3(user_num).to_s


puts "Always #{final_num}"



