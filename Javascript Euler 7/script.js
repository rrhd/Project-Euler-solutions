var i = 2;
var n = 10001;
var j;
var k = 3;
var p_t;
while (i<=n) {
	j = k;
	p_t=[];
	while (j>1) {
		if ((k%j==0)&&(p_t.length<2)) {
			p_t.push(j)
		}
		j=j-2;
	}
	if ((p_t.length<2)) {
	i=i+1;
	}
	k=k+2;
}