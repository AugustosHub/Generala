//Se necesita simular un lanzamiento de 5 dados cuyos valores van del 1 al 6 y dependiendo de los valores obtenidos se definir� categor�a. 
//Las categor�as son:
//Si todos los n�meros generados son iguales, es "GENERALA".
//Si 3 n�meros son iguales y 2 son iguales, es "FULL".
//Si 4 n�meros son iguales es "POKER".
//Si todos los n�meros son crecientes, es "ESCALERA".
//Si no se cumple ninguna de las anteriores informar "SIN CATEGOR�A"

Proceso TPGenerala
	//Se definen todas las variables, contadores, banderas, etc que se utilizar�n en el ejercicio
	Definir i,eleccion,resp Como Entero;
	Definir num1, num2, num3, num4, num5 Como Entero;
	Definir lado1, lado2, lado3, lado4, lado5, lado6 Como Entero;
	Definir bandera, generala, poker, full, escalera Como Logico;;
	
	bandera <- verdadero;
	
	Repetir
		//Se declaran todas las variables dentro del repetir para actualizar los valores en cada nueva tirada
		generala <- Verdadero;
		poker <- Verdadero;
		full <- Verdadero;
		escalera <- falso;
		
		//Caso contrario de declararlas afuera del bucle van a tener el mismo valor de la anterior tirada sumada a los de la nueva tirada
		num1 <- 0;
		num2 <- 0;
		num3 <- 0;
		num4 <- 0;
		num5 <- 0;
		
		lado1 <- 0;
		lado2 <- 0;
		lado3 <- 0;
		lado4 <- 0;
		lado5 <- 0;
		lado6 <- 0;
		
		//Men� del juego, el ejercicio no lo pide pero lo hice para que sea m�s pr�ctico e intuitivo
		Escribir "**** GENERALA ****";
		Escribir "1. JUGAR";
		Escribir "2. REGLAS";
		Escribir "3. SALIR";
		Escribir "------------------------------------------";
		Escribir "ELIJA UNA OPCI�N";
		Leer eleccion;
		
		//Se verifica que se ingreso una opci�n valida (1,2,3)
		Mientras eleccion <> 1 y eleccion <> 2 y eleccion <> 3 Hacer
			Escribir "Opci�n invalida, intente de nuevo...";
			leer eleccion;
		FinMientras
		
		Segun eleccion Hacer
			1:
				Limpiar Pantalla;
				Escribir "**** JUGAR ****";
				Escribir " (!) Siga las instrucciones (!)";
				Escribir "�Quiere tirar los dados?";
				Escribir "1. SI";
				Escribir "2. NO";
				Leer resp;
				
				Segun resp hacer
					1:
						//Seg�n respuesta 1. SI y 2. No se lanzar�n o no los dados
						//______________________________________________________________________//
						para i <- 1 hasta 5 Hacer
							Escribir "Tirando dados....";
							
							//Seg�n en la tirada que estemos se guardar�n los valores para cada tira si i = 1, es la primera tirada
							Segun i Hacer
								1: 
									//M�todo manual (descomentar el leer y comentar el aleatorio).
									
									//leer num1;
									
									//Corroboraci�n del m�todo manual para que se elija un n�mero del 1 al 6, de otro modo se rompe el programa//
									
									//mientras num1>1 o num1<6 Hacer
									//   Escribir "Ingrese un n�mero valido...";
									//   leer num1
									//FinMientras
									
									num1 <- Aleatorio(1,6);
									Escribir "Primera tirada: ",num1;
									
									Segun num1 Hacer
										1:
											//El n�mero que sali� en cada tirada se guarda en la variable "lado" que guarda la cantidad de veces que sali� ese lado
											lado1 <- lado1 + 1;
										2:
											lado2 <- lado2 + 1;
										3: 
											lado3 <- lado3 + 1;
										4:
											lado4 <- lado4 + 1;
										5:
											lado5 <- lado5 + 1;
										6:
											lado6 <- lado6 + 1;
									FinSegun
								2:
									//M�todo manual (descomentar el leer y comentar el aleatorio).
									
									//leer num2;
									
									//Corroboraci�n del m�todo manual para que se elija un n�mero del 1 al 6, de otro modo se rompe el programa//
									
									//mientras num2>1 o num2<6 Hacer
									//   Escribir "Ingrese un n�mero valido...";
									//   leer num2
									//FinMientras
									
									num2 <- Aleatorio(1,6);
									Escribir "Segunda tirada: ",num2;
									
									Segun num2 Hacer
										1:
											//El n�mero que sali� en cada tirada se guarda en la variable "lado" que guarda la cantidad de veces que sali� ese lado
											lado1 <- lado1 + 1;
										2:
											lado2 <- lado2 + 1;
										3: 
											lado3 <- lado3 + 1;
										4:
											lado4 <- lado4 + 1;
										5:
											lado5 <- lado5 + 1;
										6:
											lado6 <- lado6 + 1;
									FinSegun
								3:
									//M�todo manual (descomentar el leer y comentar el aleatorio).
									
									//leer num3;
									
									//Corroboraci�n del m�todo manual para que se elija un n�mero del 1 al 6, de otro modo se rompe el programa//
									
									//mientras num3>1 o num1<3 Hacer
									//   Escribir "Ingrese un n�mero valido...";
									//   leer num3
									//FinMientras
									
									num3 <- Aleatorio(1,6);
									Escribir "Tercera tirada: ",num3;
									
									Segun num3 Hacer
										1:
											//El n�mero que sali� en cada tirada se guarda en la variable "lado" que guarda la cantidad de veces que sali� ese lado
											lado1 <- lado1 + 1;
										2:
											lado2 <- lado2 + 1;
										3: 
											lado3 <- lado3 + 1;
										4:
											lado4 <- lado4 + 1;
										5:
											lado5 <- lado5 + 1;
										6:
											lado6 <- lado6 + 1;
									FinSegun
								4:
									//M�todo manual (descomentar el leer y comentar el aleatorio).
									
									//leer num4;
									
									//Corroboraci�n del m�todo manual para que se elija un n�mero del 1 al 6, de otro modo se rompe el programa//
									
									//mientras num1>4 o num4<6 Hacer
									//   Escribir "Ingrese un n�mero valido...";
									//   leer num4
									//FinMientras
									
									num4 <- Aleatorio(1,6);
									Escribir "Cuarta tirada: ",num4;
									
									Segun num4 Hacer
										1:
											//El n�mero que sali� en cada tirada se guarda en la variable "lado" que guarda la cantidad de veces que sali� ese lado
											lado1 <- lado1 + 1;
										2:
											lado2 <- lado2 + 1;
										3: 
											lado3 <- lado3 + 1;
										4:
											lado4 <- lado4 + 1;
										5:
											lado5 <- lado5 + 1;
										6:
											lado6 <- lado6 + 1;
									FinSegun
								5:
									//M�todo manual (descomentar el leer y comentar el aleatorio).
									
									//leer num5;
									
									//Corroboraci�n del m�todo manual para que se elija un n�mero del 1 al 6, de otro modo se rompe el programa//
									
									//mientras num5>1 o num5<6 Hacer
									//   Escribir "Ingrese un n�mero valido...";
									//   leer num5
									//FinMientras
									
									num5 <- Aleatorio(1,6);
									Escribir "Quinta tirada: ",num5;
									
									Segun num5 Hacer
										1:
											//El n�mero que sali� en cada tirada se guarda en la variable "lado" que guarda la cantidad de veces que sali� ese lado
											lado1 <- lado1 + 1;
										2:
											lado2 <- lado2 + 1;
										3: 
											lado3 <- lado3 + 1;
										4:
											lado4 <- lado4 + 1;
										5:
											lado5 <- lado5 + 1;
										6:
											lado6 <- lado6 + 1;
									FinSegun
							FinSegun
						FinPara
						//______________________________________________________________________//
						Escribir "------------------------------------------";
						Escribir "**** RESULTADOS ****";
						//------------------------------------------------------------------------------------//
						//CASOS GENERALA
						//Para ser generala tiene que haber salido cinco veces, en el caso que lado 1 haya salido cinco veces ser� una generala y as� con los dem�s n�meros
						si lado1 == 5 Entonces
							Escribir "GENERALA";
							Escribir "-----------------------------------";
						SiNo
							si lado2 == 5 Entonces
								Escribir "GENERALA";
								Escribir "-----------------------------------";
							SiNo
								si lado3 == 5 Entonces
									Escribir "GENERALA";
									Escribir "-----------------------------------";
								SiNo
									si lado4 == 5 Entonces
										Escribir "GENERALA";
										Escribir "-----------------------------------";
									SiNo
										si lado5 == 5 Entonces
											Escribir "GENERALA";
											Escribir "-----------------------------------";
										SiNo
											si lado6 == 5 Entonces
												Escribir "GENERALA";
												Escribir "-----------------------------------";
											SiNo
												generala <- falso;
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						//------------------------------------------------------------------------------------//
						//CASOS POKER
						//Para que sea un p�ker tiene que haber salido 4 veces el n�mero, si lado1 sali� cuatro veces en este caso el uno ser� poker no importa cual sea el n�mero restante 
						si lado1 == 4 Entonces
							Escribir "P�KER";
							Escribir "-----------------------------------";
						SiNo
							si lado2 == 4 Entonces
								Escribir "P�KER";
								Escribir "-----------------------------------";
							SiNo
								si lado3 == 4 Entonces
									Escribir "P�KER";
									Escribir "-----------------------------------";
								SiNo
									si lado4 == 4 Entonces
										Escribir "P�KER";
										Escribir "-----------------------------------";
									SiNo
										si lado5 == 4 Entonces
											Escribir "P�KER";
											Escribir "-----------------------------------";
										SiNo
											si lado6 == 4 Entonces
												Escribir "P�KER";
												Escribir "-----------------------------------";
											SiNo
												poker <- falso;
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						//------------------------------------------------------------------------------------//
						//CASOS FULL
						//Para que sea una Full tiene que salir 3 veces un n�mero y otras 2 veces un n�mero distinto
						//Se estudia el caso particular de cada n�mero, en el caso del lado1 tiene que salir tres veces el uno y 2 veces cualquier otro n�mero distinto al uno
						//por eso no est� incluido en el parentesis el lado 1 porque si no ser�a una generala. Mismo procedimientos para los dem�s casos
						si lado1 == 3 y (lado2 == 2 o lado3 == 2 o lado4 == 2 o lado5 == 2 o lado6 == 2) Entonces
							Escribir "FULL";
							Escribir "-----------------------------------";
						SiNo
							si lado2 == 3 y (lado1 == 2 o lado3 == 2 o lado4 == 2 o lado5 == 2 o lado6 == 2) Entonces
								Escribir "FULL";
								Escribir "-----------------------------------";
							SiNo
								si lado3 == 3 y (lado1 == 2 o lado2 == 2 o lado4 == 2 o lado5 == 2 o lado6 == 2) Entonces
									Escribir "FULL";
									Escribir "-----------------------------------";
								SiNo
									si lado4 == 3 y (lado1 == 2 o lado2 == 2 o lado3 == 2 o lado5 == 2 o lado6 == 2) Entonces
										Escribir "FULL";
										Escribir "-----------------------------------";
									SiNo
										si lado5 == 3 y (lado1 == 2 o lado2 == 2 o lado3 == 2 o lado4 == 2 o lado6 == 2) Entonces
											Escribir "FULL";
											Escribir "-----------------------------------";
										SiNo
											si lado6 == 3 y (lado1 == 2 o lado2 == 2 o lado3 == 2 o lado4 == 2 o lado5 == 2) Entonces
												Escribir "FULL";
												Escribir "-----------------------------------";
											SiNo
												full <- falso;
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
						//------------------------------------------------------------------------------------//
						//CASOS ESCALERA
						//Existen tres posibilidades, una escalera al cinco otra escalera al 6 y por �ltimo una escalera al Az(1)
						//En este caso si importa el orden en el que sali� el n�mero y por eso se hace una condicional lineal ascendente para cada caso
						//ESCALERA INFERIOR 1-2-3-4-5
						si num1 == 1 y num2 == 2 y num3 == 3 y num4 == 4 y num5 == 5 Entonces
							escalera <- Verdadero;
							Escribir "ESCALERA INFERIOR (1-2-3-4-5)";
							Escribir "-----------------------------------";
						FinSi
						//------------------------------------------------------------------------------------//
						//ESCALERA SUPERIOR 2-3-4-5-6
						si num1 == 2 y num2 == 3 y num3 == 4 y num4 == 5 y num5 == 6 Entonces
							escalera <- Verdadero;
							Escribir "ESCALERA SUPERIOR (2-3-4-5-6)";
							Escribir "-----------------------------------";
						FinSi
						//------------------------------------------------------------------------------------//
						//ESCALERA AL AS 3-4-5-6-1
						si num1 == 3 y num2 == 4 y num3 == 5 y num4 == 6 y num5 == 1 Entonces
							escalera <- Verdadero;
							Escribir "ESCALERA AL AS (3-4-5-6-1)";
							Escribir "-----------------------------------";
						FinSi
						//------------------------------------------------------------------------------------//
						//------------------------------------------------------------------------------------//
						//CASO SIN CATEGORIA
						//Para que no haya categoria todos los n�meros que salgan en las mismas tiradas tienen que ser distintos o que no esten incluidos ni en poker, full, escalera o generala
						
						//En esta primera condici�n, con ayuda de las banderas se verifica que no se haya dado ninguna de las categorias, osea que categorias es igual a falso no hubo ninguna
						//Puede pasar que haya n�meros repetidos pero no cumplan con ninguna categoria por eso es la primera condici�n
						Si poker == falso y full == falso y generala == falso y escalera == Falso Entonces
							Escribir "SIN CATEGORIA";
							Escribir "-----------------------------------";
						SiNo
							//Condici�n anidada, el caso m�s raro de sin categor�a es que todos los n�meros sean distintos, por eso es la �ltima condici�n
							Si num1 <> num2 y num2 <> num3 y num3 <> num4 y num4 <> num5 y escalera == Falso Entonces
								Escribir "SIN CATEGORIA";
								Escribir "-----------------------------------";
							FinSi
						FinSi
						//------------------------------------------------------------------------------------//
					2:
						//Se borra lo que hab�a anteriormente en pantalla y vuelve al men�
						Limpiar Pantalla;
						Escribir "-----------------------------------";
						Escribir "Volviendo al men�...";
						Escribir "-----------------------------------";
				FinSegun
				
			2:
				//Reglas del juego,condiciones y posibles resultados del mismo
				Limpiar Pantalla;
				Escribir "**** REGLAS ****";
				Escribir "El jugador lanzar� dos dados, dependiendo de la secuencias de n�meros obtenidos por los lanzamientos se le asignar� una categor�a";
				Escribir " Categor�as: ";
				Escribir "� Si ning�n n�mero es igual es: SIN CATEGORIA";
				Escribir "� Si hay tres n�meros iguales distintos de otro par iguales es: FULL";
				Escribir "� Si hay cuatro n�meros iguales es: POKER";
				Escribir "� Si los n�meros son crecientes es: ESCALERA";
				Escribir "� Si hay cinco n�meros iguales es: GENERALA";
				Escribir "------------------------------------------";
				
			3:
				//Termina con el programa declara la bandera falsa que es la necesaria para terminar con el bucle repetir
				Limpiar Pantalla;
				Escribir "Saliendo del programa...";
				bandera <- falso;
		FinSegun
	Hasta Que bandera = falso;
FinProceso