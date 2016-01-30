puts "Welcome to the Numerology app, please input your birthday in number format (MMDDYYYY)"
birthday = gets

def get_birthpath_number(birthdate)
# Convert each digit into an integer to be able to add them
    num1 = birthdate[0].to_i
    num2 = birthdate[1].to_i
    num3 = birthdate[2].to_i
    num4 = birthdate[3].to_i
    num5 = birthdate[4].to_i
    num6 = birthdate[5].to_i
    num7 = birthdate[6].to_i
    num8 = birthdate[7].to_i

    number = num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8
    puts number
    # Convert number to a string to then convert each digit into an integer
    number_string = number.to_s
    numb1 = number_string[0].to_i
    numb2 = number_string[1].to_i
    number2 = numb1 + numb2
    puts number2
    # Check and see if the number is 10 or greater
    if number2 >= 10
        number_string2 = number2.to_s
        numbe1 = number_string2[0].to_i
        numbe2 = number_string2[1].to_i
        final_number = numbe1 + numbe2
        else
        final_number = number2
    end
end

# Use the method to get the birthpath number using inputted birthday
birthpath_number = get_birthpath_number(birthday)

def birthpath_message(bp_number)
    case bp_number
        when 1
        message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
        when 2
        message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
        when 3
        message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
        when 4
        message =  "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
        when 5
        message =  "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
        when 6
        message =  "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
        when 7
        message =  "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
        when 8
        message =  "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
        when 9
        message =  "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    end
    return message
end

puts "Your numberology number is #{birthpath_number}"
puts birthpath_message(birthpath_number)
