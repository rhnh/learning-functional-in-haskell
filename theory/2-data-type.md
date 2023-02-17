# Types and Type classes
## What is a type class ?
- A type class is an interface that defines some behavior.
- It can be compared to an interface in Java Language and not classes of Java Language. But they are called classes in Haskell

## The command `:t` or `:type`
The command `:t` shows the type of given parameter!
```hs
> :t 'a'
```

## The Function types 
Functions can be given explicit types which has to be above the definition of function
```hs
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'...'Z']>]

addThree :: Int -> Int -> Int -> Int  
addThree x y z = x + y + z  
```
## The Characters
- **Char** for a single character
- **String** or **[Char]** for multiple characters
- removeNonUppercase has a type of `[Char] -> [Char]`
- `[Char] is synonymous with String`
- Although the compiler does add the types. But giving a function explicit type is a good practice

## The numbers

### Integers
For numbers there are `Int` and `Integer`
- **Integer** is for the larger numbers
> predefined operators 

- **+** ,
- **-**, 
- **\***  
- **^**, 
- **div**, 
- **mod**, 
- **abs** , 
- **==** 
- **/=**
- **<**
- **>**
- **<=**
- **>**
- **>=**
## Guarded equation


### Floats
- **Float** for single precisions
- **Double** for double precisions
### Booleans
- **True** ,
- **False** ,
- **not** , 
- **&&** ,
- **||** 
- **==**

> Int 29 bits

> Integer 64 bits
#### Example for Bool
```hs
xor::Bool -> Bool -> Bool
xor x y = (x||y) && not (x && y)

```

xor2:: Bool -> Bool -> Bool 
#### Example 2 for Bool as table like function
```hs
xor2:: Bool -> Bool -> Bool 
xor2 True True = False
xor2 True False = True
xor2 False True = True
xor3 False False = False
```


## Eq
Eq is used for types that support equality testing. == and /= are move Eq class.
```hs
> :info Eq
> :t (==) 
```
The `:t (==)` results `(==) :: Eq a => a -> a -> Bool``

```
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool
```
## Ord
The **Ord** is used for comparison which uses >= and <=
Same as **Eq**
```hs
:t Ord
```

## show
members of **show** can be presented as string.
```hs
show 3
show True
```
`
"3"
"True"
`

## read
**Read** is sort of the opposite typeclass of Show. The read function takes a string and returns a type which is a member of Read.

## enum
Types in this class: (), **Bool**, **Char**, **Ordering**, **Int**, **Integer**, **Float** and **Double**.
> P.S I need more information about show, read and enum


## QuickCheck

QuickCheck is built-in testing environment for haskell. 
it can be imported 
```hs
import Test.QuickCheck

prop_xor2 x y = 
  xor x y == xor2 x y

quickCheck prop_xor2
```