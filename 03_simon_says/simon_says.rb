#write your code here

def echo(says)
    says
end

def shout(says)
    says.upcase
end

def repeat(says, i = nil)
    result = says + ' ' + says 
    if i 
        (i - 2).times {result += ' ' + says}
    end
    return result
end

def start_of_word(says, i)
    return says[0..(i - 1)]
end

def first_word(says)
    return says.split.first
end

def titleize(says)
    smallWords = ['and', 'the', 'over']
    result = says.split
    result = result.each do |word| 
        if (smallWords.include? word || word.length < 3) && word != result[0]
            result = word
        else
            result = word.capitalize!
        end
    end
    return result.join(' ')

end
