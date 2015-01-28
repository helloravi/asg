# Check if the given string has unique characters

def checkpresence(arr, char)
  i = 0
  while(i<arr.length)
    if (arr[i]==char)
      return true
    end
    i=i+1
  end
  return false
end


def uniqchar(string)
  i=0
  arr=[]
  while(i<string.length)
    if checkpresence(arr, string[i])
      return "not unique"
    end
    arr<<string[i]
    i=i+1
  end
  return "unique"
end

puts uniqchar("satyaram")