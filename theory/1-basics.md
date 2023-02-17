### Basics

```haskell
> 1 + 3
> 1 / 3
> succ 3 

```
### First Function
```haskell
double x = if x > 100 then x else x*3
```
> function names cannot be capitalized

### Lists
```hs
let myList = [1,2,3,4]
```

>Creating

```hs
> [1..10]
> ['a'..'z']
> [x*2 | x <- [1..10]]  
```

> concatenating

The ++ use for concatenating.
if you are concatenating a bunch of list use ++ 
otherwise use ":"
```hs
> 3: [1,2,2,3]
> [12,21,21] ++ [21,12,32,3123,123]
```

> take 
```hs
take 3 [324,23,32,32,2]
```

> cycle
```hs
> take 10 (cycle [1,2,3])
> take 12 (cycle "LOL ")
```
[1,2,3,1,2,3,1,2,3,1]  
"LOL LOL LOL "   

> repeat 
```hs
take 10 (repeat 5) 
```
[5,5,5,5,5,5,5,5,5,5]  
> replicate
```hs 
> replicate 3 10
```
[5,5,5,5,5,5,5,5,5,5]  

> `elem`
```hs
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]    --takes a string str and removes uppercase letters
```

> `mod`
```hs
6 `mod` 3 == 0
```
True

### Tuples
Value pair with same or different data type
```hs
> let t = ("john",1)
```
It is valid data tuples. 
a list with ["john",1] would give error.

> fst

Takes the key
```hs
> let t = ("john",1)
> fst t
```
"john"

> snd

takes the value out of tuple
```hs
> let t = ("john",1)
> snd t
```
1

>zip

creates a tuple from 2 lists
```hs
>zip 
[1,2,3,4,5] [5,5,5,5,5]
```
[(1,5),(2,5),(3,5),(4,5),(5,5)]  
```hs
zip [5,3,2,6,2,7,2,5,4,6,6] ["im","a","turtle"]  
```
[(5,"im"),(3,"a"),(2,"turtle")]  
