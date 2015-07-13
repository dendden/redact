puts "Text:"
text = gets.chomp

puts "Words to redact (separated by whitespace):"
toRedact = gets.chomp

words = text.downcase.split(' ')
redactWords = toRedact.downcase.split(' ')

result = ''

words.each do |word|
    shouldRedact = false

    redactWords.each do |redact|
        if word == redact
            shouldRedact = true
            break
        end
    end

    if shouldRedact
        result += "REDACT "
    else
        result += (word + ' ')
    end
end
puts result
puts
