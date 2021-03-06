"cluster2keys" <- 
function(c) {
if (inherits(c, "kmeans")) {c <- c$cluster
	p <- max(c)
	v <- length(c)
	keys <- matrix(rep(0,p*v),ncol=p)
	for (i in 1:v) {keys[i,c[i]] <- 1}  
	} else {if(length(class(c)) >1) {if (inherits(c,"iclust")) {keys <- factor2cluster(c)}
}}
return(keys) }
