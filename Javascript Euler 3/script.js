var n = 600851475143;
//var n = 13195;
var p = [];
if (n%2==0) {
	n=n/2;
	p=2;
}
var i = 3;
var p_t
var j
while (n>1) {
	p_t = [];
	j = i;
	while ((p_t.length<1)&&(j>1)) {
		if ((i%j==0)&&(!(j==1))) {
			p_t.push(j);
		}
		j=j-2;
	}
	if ((p_t.length==1)&&(n%p_t==0)) {
		n=n/p_t;
	}
	i=i+2;
}