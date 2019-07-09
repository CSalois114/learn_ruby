def translate(text)
    word_start = text.split.map {|word| word.slice(/(^.*?(?=[aeiou]))/)}
    word_end = text.split.map { |word| word.slice(/[aeiou].*$/)}
    word_start = word_start.map do |start_pig|  
        if start_pig[-1] == 'q'
            end_pig = word_end[word_start.index(start_pig)]
            if end_pig[0] == 'u'
                end_pig[0] = ''
                start_pig = start_pig + 'u'
            end
        end
        start_pig = start_pig + 'ay'
    end
    return word_end.zip(word_start).map {|word| word.join}.join(' ')
end