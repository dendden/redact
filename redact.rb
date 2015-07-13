puts "Text:"
text = gets.chomp

puts "Words to redact (separated by whitespace):"
toRedact = gets.chomp

words = text.downcase.split(' ')
redactWords = toRedact.downcase.split(' ')

words.each do |word|
    shouldRedact = false
    
    redactWords.each do |redact|
        if word == redact
            shouldRedact = true
            break
        end
    end

    if shouldRedact
        print "REDACT "
    else
        print word + ' '
    end
end
puts

