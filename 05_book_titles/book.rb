class Book

    attr_accessor :title

    def title

        wordsArray = @title.split(' ')
        littleWords = ['the', 'a', 'an', 'and', 'in', 'of']

        titleArray = wordsArray.map do |word|
            if littleWords.include?(word)
                word
            else
                word = word.capitalize
            end
        end
            titleArray[0] = titleArray[0].capitalize
            @title = titleArray.join(' ')
    end
end







































    
        # def title= (new_title)
            # words = new_title.split(" ")
            # words[0] = words[0].capitalize 
            # words = words.map do |word|
            #     if "a an and the in of".include?(word) and word != 'i'
            #         word
            #     else
            #         word.capitalize
            #     end
            # end
            # @title = words.join(' ')
        # end
    
    # end