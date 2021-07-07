%dw 1.0
%output application/java
---
(payload.rates[(flowVars.buyCurrency)]) * (1 / (payload.rates[(flowVars.sellCurrency)])) 
