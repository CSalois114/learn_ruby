class Book
    attr_reader :title

    def title=(str)
        non_caps = ["the", "in", "of", "a", "an", "and"]
        str = str.capitalize.split(" ").map do |word|
            if !non_caps.include? word 
                word = word.capitalize
            else 
                word = word
            end           
        end 
        @title = str.join(" ")
    end

end
