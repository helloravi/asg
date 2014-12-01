def mergearray(a,b)
	i = 0 #index of the first array
	j = 0 #index of the second array
	c=[]
	p = a.length + b.length
	while(c.length < p)
		if (a[i].nil? && !b[j].nil? && c.length < p)
			c.concat(b[j..-1])
		end

		if (b[j].nil? && !a[i].nil? && c.length < p)
			c.concat(a[i..-1])
		end

		if(!a[i].nil? && !b[j].nil? && a[i] < b[j])
			c.push(a[i])
			i=i+1 
		elsif(!a[i].nil? && !b[j].nil? && a[i] == b[j])
			c.push(a[i])
			c.push(b[j])
			j=j+1
			i=i+1
		elsif(!a[i].nil? && !b[j].nil? && a[i] > b[j])
			c.push(b[j])
			j=j+1
		end
	end
	
	return c
end

def mergesort(a)
	len = a.length
	if len == 1
		return a
	elsif len%2==0
		return mergearray(mergesort(a[0..len/2-1]), mergesort(a[len/2..len-1]))
	else
		return mergearray(mergesort(a[0..len/2]), mergesort(a[len/2+1..len-1]))

	end
end


a = [23, 32, 1, 1, 1, 3, 7]
b =[1, 1, 1, 3, 7]
puts mergesort(a)
