def translate words

    @translation = ''
    @translationArray = []
    def isVowel letter
        if (letter == 'a' || letter == 'e' || letter == 'i' || letter == 'o' || letter == 'u')
            true
        else
            false
        end
    end

    
    manyWordsArray = words.split(' ')
    i = 0
    while (i < manyWordsArray.length)
        wordArray = manyWordsArray[i].split('')

        if (manyWordsArray[i] == manyWordsArray[i].capitalize)
            capFlag = 1
        else
            capFlag = 0
        end


        if isVowel(wordArray[0])
            wordArray.push('ay')
        elsif ((!isVowel(wordArray[0]) && !isVowel(wordArray[1]) && !isVowel(wordArray[2])) || (!isVowel(wordArray[0]) && wordArray[1] == 'q' && wordArray[2] == 'u'))
            wordArray.push(wordArray[0], wordArray[1], wordArray[2]);
            wordArray.push('ay');
            wordArray = wordArray.drop(3)
        elsif ((!isVowel(wordArray[0]) && !isVowel(wordArray[1])) || (wordArray[0] == 'q' && wordArray[1] == 'u'))
            wordArray.push(wordArray[0], wordArray[1])
            wordArray.push('ay');
            wordArray = wordArray.drop(2)
        else
            wordArray.push(wordArray[0])
            wordArray.push('ay');
            wordArray = wordArray.drop(1)
        end
        @translationArray[i] = wordArray.join('')

        if (capFlag == 1)
            @translationArray[i] = @translationArray[i].capitalize
        end
        i = i + 1
    end
    puts @translation = @translationArray.join(' ').to_s
@translation
end

translate('eat Pie')



