def foo (a, b)
    a + b
end

def bar (a, b)
    foo(a*222, b*333)
end

result = bar(1, 2)
puts result