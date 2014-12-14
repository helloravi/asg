function included(a,b) {
  i = 0
  while(i<a.length) {
    if (b.indexOf(a[i])<0) {
      return false
    }
    i=i+1
  }

return true

}

function anagram(a,b) {
  if (a.length == b.length) {
    if (included(a,b)){
      return a "and" b 

    }
  }
}
console.log(included("aaa", "bbc"))