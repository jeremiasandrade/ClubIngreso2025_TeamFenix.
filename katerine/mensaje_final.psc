Funcion mensaje_final <- texto_final (resad)
	Si resad = "si" o resad = "Si" Entonces
		Escribir "la cantidad de intentos exitosos en el registro es : ",numexi
		Escribir "la cantidad de intentos fallidos  en el registro es : ",numfall
	SiNo
		Si resad = "no" o resad= "No" Entonces
			Limpiar Pantalla
			Escribir "Hasta luego"
		SiNo
			Escribir "parametro no correspondiente "
		Fin Si
	Fin Si
	
Fin Funcion
Algoritmo mensaje_final
	Escribir "Desea ver los resultados "
	Leer resad
	Escribir texto_final(resad)
FinAlgoritmo







