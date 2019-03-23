def echo words
    words
end

def shout words
    words.upcase
end

def repeat(words, n=2)
    i = 1
    @result = words
    while (i <= n - 1)
        @result = @result + ' ' + words
        i = i + 1
    end
    @result
end

def start_of_word(word, letters)
    word.byteslice(0..letters-1)
end

def first_word words

    first = words.split(' ')[0]

end

def titleize words

    wordsArray = words.split(' ')
    i = 0
    titleArray = []
    while (i < wordsArray.length)
        if (wordsArray[i] == 'and' || wordsArray[i] == 'the' || wordsArray[i] == 'over')
            titleArray[i] = wordsArray[i]

        else 
            titleArray[i] = wordsArray[i].capitalize
        end
        i = i + 1 
    end
    titleArray[0] = titleArray[0].capitalize
    titleArray.join(' ')
end