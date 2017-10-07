prior<-c(working = 0.5, broken=0.5)
likelihood<-rbind(
  working = c(good=0.99, bad=0.01),
  broken = c(good = 0.6, bad = 0.4))

data<-c("good","good","good","good","good","good","bad","good","bad","good","bad","good","bad","good","good","good","bad","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","good","bad","bad","bad","good","good","good","good")

bayes<- function(prior, likelihood, data)
{
  posterior<-matrix(0, nrow = length(data), ncol=length(prior))
  dimnames(posterior) <- list(data, names(prior))
  
  initial_prior<-prior
  for (i in 1:length(data)){
    posterior[i,]<-
      prior*likelihood[,data[i]]/
      sum(prior*likelihood[,data[i]])
    prior<-posterior[i,]
  }
  return (rbind(initial_prior, posterior))
  
}


matplot(bayes(prior, likelihood, data), t='b', lty=1, pch=20, col=c(3,2))