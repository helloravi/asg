def included(a,b)
  x=a.split("")
    for i in x
      if(!b.include?(i))
        return false
      end
    end

    return true
end

def anagram(a,b)
  if a.length==b.length
    if(included(a,b))
      return "#{a} and #{b} are anagrams"
    else
      return "#{a} and #{b} are not anagrams"
    end

  else
    return "#{a} and #{b} are not anagrams"
  end

end



puts anagram("aaa", "bbc")