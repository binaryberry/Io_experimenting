fibonacci := method(n, 
	i := 1
	a := 0 
	b := 1
	
	if(n == 0, 0, 
	if(n == 1, 1, 
	for(i,1,n-1, 
	c := a + b
	a := b
	b := c)))
)