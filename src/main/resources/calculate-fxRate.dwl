%dw 1.0
%output application/java
%var margin = p('markup') as :number
---
(flowVars.baseRate * (margin/100)) + flowVars.baseRate