# simple-bayes

Simple example of Bayes' rule in R.

Let's say that we have a machine that makes light bulbs and we want to know if the machine is working or if it is broken based on the quality of the light bulbs produced by this machine.

To build a Bayesian model we need to set up 2 components
- the prior distribution
- the likelihood

Let's assume that we have a new machine (M) and we are 99% confident that the machine is working correctly. Then we can define our prior as:

- P(M=working) = 0.99
- P(M=broken) = 0.01

Now we need to estimate the likelihood using a second random variable (L) to represent a light bulb produced by the machine M.
This random variable will have 2 states {good, bad}. To estimate the likelihood we can ask ourselves these questions:

- How likely is to have a good or a bad light bulb when the machine is working?
- How likely is to have a good or a bad light bulb when the machine is broken?

We can model this as follows:

- P(L=good | M= working) = 0.99
- P(L=bad | M= working) = 0.01
- P(L=good | M= broken) = 0.60
- P(L=bad | M= broken) = 0.40

The R code applies Bayes rule using these prior and likelihoods. We can enter a sequence of light bulb outcomes and the posterior probability will be updated to reflect our belief that the machine is either working or broken.


