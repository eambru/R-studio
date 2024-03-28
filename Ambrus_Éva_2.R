library(RQuantLib)

s0 <- 69     # részvény jelenlegi árfolyama
strike <- 70     # K
r <- 0.05   # kockázatmentes kamatláb 
v <- 0.35  # volatilitása éves szinten
t <- 6/12    # lejáratig hátralévő idő években 

# Opciós ár kiszámítása a Black-Scholes modell segítségével
#EuropeanOption(type="put", underlying=s0, strike=strike, dividendYield=0, riskFreeRate=r, maturity=t, volatility=v)

d1 <- (log(s0 / strike) + (r + v^2 / 2) * t) / (v * sqrt(t))
d2 <- d1 - v * sqrt(t)

option_price <- strike * exp(-r * t) * pnorm(-d2) - s0 * pnorm(-d1) 
option_price