Algoritmo MatrixChain
    Definir n, i, j, k, L, q Como Entero
    Escribir "PARTICIONAMIENTO OPTIMO DE MATRICES"
    Escribir "----------------------------------"
    Escribir "Cantidad de matrices:"
    Leer n
    Dimension p[n+1]
    Dimension m[n,n]
    Escribir "Ingrese las dimensiones"
    Para i <- 1 Hasta n+1 Hacer
        Escribir "Dimension ", i, ":"
        Leer p[i]
    FinPara
	
    Para i <- 1 Hasta n Hacer
        m[i,i] <- 0
    FinPara
	
    Para L <- 2 Hasta n Hacer	
        Para i <- 1 Hasta n-L+1 Hacer		
            j <- i + L - 1	
            m[i,j] <- 999999999	
            Para k <- i Hasta j-1 Hacer		
                q <- m[i,k] + m[k+1,j] + p[i]*p[k+1]*p[j+1]		
                Si q < m[i,j] Entonces
                    m[i,j] <- q
                FinSi			
            FinPara	
        FinPara	
    FinPara
	
    Escribir ""
    Escribir "Tabla de costos minimos:"
    Para i <- 1 Hasta n Hacer
        Para j <- 1 Hasta n Hacer
            Escribir Sin Saltar m[i,j], "      "
        FinPara
        Escribir ""
    FinPara
    Escribir ""
    Escribir "Costo minimo de multiplicaciones: ", m[1,n]	
FinAlgoritmo