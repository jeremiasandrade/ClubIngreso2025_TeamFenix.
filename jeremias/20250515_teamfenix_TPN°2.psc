Funcion Devuelta <- controldeedad ( edad, apellido, nombre, contadoraceptados, contadorrechazados,permitidos, denegados)
	si edad <= 0 Entonces
		Escribir "disculpe, la edad ingresada es imvalida, por favor vuelva a ingresar la edad"
		contadorrechazados <- contadorrechazados +1
	SiNo
		Si edad >= 18 Entonces
			Escribir "+--------------------------------------------------------+"
			Escribir "Acceso permitido. ¡Bienvenido/a!", apellido," ", nombre
			Escribir "espero su estadia en el club sea de la mejor manera"
			Escribir "+--------------------------------------------------------+"
			Para contadoraceptados <- 1 Hasta 1 Con Paso 1 Hacer
				permitidos <- contadoraceptados + 1
				permitidos = contadoraceptados
			Fin Para
		SiNo
			Limpiar Pantalla
			Para contadorrechazados <- 1 Hasta 1 Con Paso 1 Hacer
				denegados <- contadorrechazados +1
				denegados = contadorrechazados
			 Escribir "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
			 Escribir "Acceso denegado. Solo mayores de edad pueden ingresar"
			 Escribir "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
			FinPara
	  Fin Si
  fin si
FinFuncion

Funcion itentos <- intentos_exitosos ( int, apellido, nombre, permitidos, denegados)
	si int = "si" o int = "Si" Entonces
		    Escribir "#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#"
			Escribir "intentos exitosos de registros: ", permitidos
			Escribir "intentos fallidos de registros: ", denegados
			Escribir "#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#"
		SiNo
			si  int = "no" o int = "No" Entonces
				Escribir "_________________________________________________________"
				Escribir "está bien, adiós ", apellido, nombre
				Escribir "_________________________________________________________"
			 Limpiar Pantalla
		 fin si
	fin si
Fin Funcion

funcion devolver <- reinicio_sigetapa (respusu, apellido, nombre, respusu2)
	 si respusu = "1" entonces
			escribir "asique desea ingresar otro usuario"
			Escribir "entendido, reiniciaremos el sistema"
			Limpiar Pantalla
		SiNo
			si respusu = "2" Entonces
				Escribir "¿desea ver los intentos de registros que hubieron en este club?"
				Escribir "responder <si> o <Si>, para ver los registros, si no lo desea, en su defecto, escriba <no> o <No>"
			 leer int
			 Escribir intentos_exitosos( int, apellido, nombre, permitidos, denegados)
			 Escribir "¿desea volver a ver el inicio o cerrar el programa, responda con <volver> o <cerrar>"
			 leer respusu2
			 si respusu2 = "volver" o respusu2 = "Volver" Entonces
				 Escribir "ya mismo será devueto"
			 SiNo
				 si  respusu2 = "Cerrar" o respusu2 = "cerrar" Entonces
					 Escribir "está bien, adiós ", apellido, nombre
					 Limpiar Pantalla
					 respusu2 <- "3"
				 fin si
			 fin si
			 
		 SiNo
			 si respusu = "3" Entonces
				 Limpiar Pantalla
				 Escribir "hasta luego", apellido, nombre
			 FinSi
		 fin si
	 FinSi
FinFuncion

	//comienzo, validación de edad
	Algoritmo ClubRecreativo
		Definir nombre, apellido como Caracter
		definir edad, permitidos, denegados, cantidad Como Entero
		contadoraceptados <- 0
		contadorrechazados <- 0
	    Repetir
		  Escribir  "+-------------------------------------------+"
		  Escribir "hola, bienvenido al club recreativo, para poder inscribirse, por favor indique su edad, su nombre y su apellido"
		  Escribir "+-------------------------------------------+"
		  leer edad
		  leer nombre 
		  leer apellido
		  limpiar pantalla
		  Escribir controldeedad( edad, apellido, nombre, contadoraceptados, contadorrechazados,permitidos, denegados)
		  Escribir "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
		  Escribir "¿que desea hacer ahora?"
		  escribir "#  ","¿desea ingresar otro usuario?, marque <1>"
		  Escribir "#  ","¿desea ver la cantidad de intentos realizados en este sistema?, marque <2>"
		  Escribir "#  ","si desea terminar con el algoritmo, marque <3>"
		  Escribir "+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~+"
		  leer respusu
		  Escribir reinicio_sigetapa(respusu, apellido, nombre, respusu2)
		  
	    Hasta Que respusu = "3" y respusu2 = "3"
FinAlgoritmo
