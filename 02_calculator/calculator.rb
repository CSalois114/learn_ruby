#write your code here
def add(a, b)
    return a + b
end

def subtract(a, b)
    return a - b
end

def sum(numbers)
    result = 0
    numbers.each { |i| result += i }
    return result
end

def multiply(numbers)
    result = 1
    numbers.each { |i| result *= i }
    return result
end

def power(a, b)
    result = 1
    b.times {result *= a}
    return result
end

def factorial(a)
    if a == 0 
        return a
    end
    result = 1
    a.times do
        result *= a
        a -=1
    end
    return result
    
end
        

 