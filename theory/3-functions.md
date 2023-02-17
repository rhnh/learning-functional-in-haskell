# Syntax in Functions
When defining functions, you can define separate function bodies for different patterns.
Which means you can create a function with same name for different param voiding if-cases

## example
```hs
lucky :: (Integral a) => a -> String  
lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky x = "Sorry, you're out of luck, pal!"   
```