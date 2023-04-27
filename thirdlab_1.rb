def word_end(word)
    wordup = word.upcase

    if wordup[-2..-1] == "CS"
        puts 2**word.length
    else
        puts word.reverse
    end
end

word = gets.chomp

word_end(word)