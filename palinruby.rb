def palindrome?(a)
  arr = []
  while a>0
    arr.push(a%10)
    a = a/10
  end
  i = 0
  j = -1
  # puts arr
  while (i<arr.length && j>-arr.length-1)
    # puts arr[i], arr[j]
    if arr[i]!=arr[j]
      return false
    end
    i=i+1
    j=j-1
  end
  return true

end

# puts palindrome?(1234456)