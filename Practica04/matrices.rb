#! /usr/bin/ruby

#Subrutina para crear una matriz cuadrada
def crearMatriz(n)
	i,j=0,0
	fila,col, elemento=0,0,0
	matriz=[[],[],[],[],[],[]]
	while fila<n
		while col<n
			puts "Element #{fila} #{col}"
			matriz[fila][col]= gets.to_i
			col += 1
		end
		col=0
		fila += 1
	end
	return matriz
end

#Subrutina para mostrar matrices
def mostrarMatriz(a,b,fila)
	n=0
	puts "#{b}:"
	while n<fila
		puts "#{a[n].join(" ")}"
		n = n+1
	end	
end

#Subrutina que calcula el producto de dos matrices cuadradas
def productoMatriz(m,n,fila)
	#mostrarMatriz(m,"MatrizA",fila)
	#mostrarMatriz(n,"MatrizB",fila)
	i,j,k=0,0,0
	tmp=0
	c=[[],[],[],[],[],[]]
	while k<fila
		while i<fila
			while j<fila
				tmp += m[k][j] * n[j][i]
				c[k][i]=tmp
				j += 1
			end
			tmp=0
			j = 0
			i += 1
			
		end
		i = 0
		k += 1
	
	end
	return c
end

##########MAIN########     #########  ###########
	puts "--- Calcular producto matricial AxB ---"
	puts "Inserte el orden de la matriz cuadrada (MAX 6):"
	n=gets.to_i
	puts "Matriz A:"
	a= crearMatriz(n) #[[2,0,1],[3,0,0],[5,1,1]]
	mostrarMatriz(a,"A",n)
	puts "Matriz B:"
	b= crearMatriz(n) #[[1,0,1],[1,2,1],[1,1,0]]

	v=productoMatriz(a,b,n)
	mostrarMatriz(v, "Resultado",n)
##########      ########     #########  ###########


########################## INSERTAR #######################################
#Insertar elementos de la matriz A
def insertarA
  a=[[0,0,0],[0,0,0],[0,0,0]]
  i,j=0,0
  while i<3
     while j<3
        puts "Elemento #{i+1} fila y #{j+1} columna"
        line=gets.to_i
        a[i][j]=line
        j+=1
     end
     j=0
     i+=1
   end
return a
end

#Insertar elementos de la matriz B
def insertarB
  b=[[0,0,0],[0,0,0],[0,0,0]]
  i,j=0,0
  while i<3
     while j<3
        puts "Elemento #{i+1} fila y #{j+1} columna"
        line=gets.to_i
        b[i][j]=line
        j+=1
     end
     j=0
     i+=1
   end
return b
end

######################## END INSERTAR ###############################


######################## MOSTRAR ####################################
#Subrutina para mostrar matrices
def mostrarMatriz(a,b)
n=0
puts "#{b}:"
while n<3
puts a[n].join(" ")
n = n+1
end	
end

####################### END MOSTRAR ###############################

####################### SUMA ######################################

#Subrutina que calcula la suma de dos matrices cuadradas

def sumar(m,n)
  mostrarMatriz(m, "Ma")
  mostrarMatriz(n, "Mb")
  c=[[0,0,0],[0,0,0],[0,0,0]]
  i=0
  j=0
  while i<3
   while j<3
     c[i][j]+=m[i][j]+n[i][j]

     j+=1
   end
   j=0
   i+=1
  end
return c
end

##################### END SUMA ##################################

##################### MAIN ######################################
puts "--- Calcular suma matricial A+B ---"

puts "Inserta la matriz A elemento a elemento"
a=insertarA
puts "Inserta la matriz B elemento a elemento"
b=insertarB

v= sumar(a,b)
mostrarMatriz(v, "Resultado")

#################### END MAIN ##################################

#Nos hemos encontrado con el error siguiente: no poder subir una fusion de la rama master si ya se nos ha adelentado el compañero 
#para poder subirlo hemos tenido que hacer un pull, al hacerlo se hace un merge automatico, con que se generan los siguientes conflictos:
#simplemente eliminando la primera fila y la ultima del fichero
#que contenian "<<<<<<HEAD" y "<<<<<<numerodeserie" y una línea que dividía el contenido de los dos ficheros.
#una vez editado el fichero lo hemos vuelto a añadir a nuestro repositorio como de costumbre:
#git add matrices.rb && git commit -m "Final" && git push origin master