main = do 
    putStrLn "HW"
    la <- getLine
    let a = read la 
    lb <- getLine
    let b = read lb 
    lc <- getLine   
    let c = read lc 
    -- se colocamos outra variável que não tem uma função na função, dá erro, porque o programa não sabe para que converter  
    let res = explica $ baskara a b c
    putStrLn $ res 
        where 
         explica [] = "Não há raízes"
         explica[x] = "Há uma raiz" ++ show x 
         explica [x', x''] = "Há duas raízes" ++ show x' ++ "e" ++ show x''
         
    -- putStrLn $ show $ baskara a b c 

sinal2 x = if x < 0 
            then -1
            else if x == 0 
                then 0 
                else 1 

sinal x 
    | x < 0 = -1
    | x == 0 = 0 
    | otherwise = 1 

absoluto x
    | x >= 0 = x
    | otherwise = -x 

somaPos [] = 0 --soma da lista vazia é zero 
somaPos (x:xs)
    | x > 0 = x + somaPos xs 
    | otherwise= somaPos xs

baskara a b c 
    | delta < 0 = []
    | delta == 0 = [x]
    | otherwise = [x', x'']
        where -- where funciona para todas as guardas 
         delta = b^2 - 4*a*c
         x = (-b) / (2*a)
         x' = (-b + sqrt delta) / (2*a)
         x'' = (-b - sqrt delta) / (2*a)

-- estudar oq são funções impuras e puras 