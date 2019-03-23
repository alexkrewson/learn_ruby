def add a, b
    a.to_f + b.to_f
end


def subtract a, b
    a.to_f - b.to_f
end

def sum array
    result = 0
    i = 0
    while (i < array.length)
        result = result + array[i].to_f
        i = i + 1
    end
    result
end

def mul array
    result = 1
    i = 0
    while (i < array.length)
        result = result * array[i]
        i = i + 1
    end
    result
end

def pow a, b
    a.to_f ** b.to_f
end

def fac x

    if x == 0
        x = 1
    end

    xArray = []
    i = 0
    while (i < x)
        xArray[i] = i + 1
        i = i + 1
    end
    puts 'xArray: ' + xArray.to_s

    i = 1
    while (i <= x)
        if i == 1
            result = xArray[0]
        else 
            result = result * xArray[i - 1]
        end
        i = i + 1
        puts 'pre-result: ' + result.to_s
    end
    
    return result
end

