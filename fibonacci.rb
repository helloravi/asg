#Solving Fibonacci series two ways - Using recursion  and using a loop

def fibonacci(n)
  return 0 if n==0
  return 1 if n==1
  return fibonacci(n-1)+fibonacci(n-2)
end

def fibonacci_alt(n)
  return 0 if n==0
  return 1 if n==1
  a=0
  b=1
  i=2
  while(i<=n)
    c=a
    a=b
    b=c+a
    i=i+1
  end
  return b
end


puts fibonacci(10)
puts fibonacci_alt(10)
