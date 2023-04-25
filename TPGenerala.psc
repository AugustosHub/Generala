//Se necesita simular un lanzamiento de 5 dados cuyos valores van del 1 al 6 y dependiendo de los valores obtenidos se definirá categoría. 
//Las categorías son:
//Si todos los números generados son iguales, es "GENERALA".
//Si 3 números son iguales y 2 son iguales, es "FULL".
//Si 4 números son iguales es "POKER".
//Si todos los números son crecientes, es "ESCALERA".
//Si no se cumple ninguna de las anteriores informar "SIN CATEGORÍA"

Proceso TPGenerala
	Definir i,eleccion,resp Como Entero;
	Definir num1, num2, num3, num4, num5 Como Entero;
	Definir lado1, lado2, lado3, lado4, lado5, lado6 Como Entero;
	Definir bandera, generala, poker, full, escalera Como Logico;;
	
	bandera <- verdadero;
	
	Repetir
		generala <- Verdadero;
		poker <- Verdadero;
		full <- Verdadero;
		escalera <- falso;
		
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
		
		Escribir "**** GENERALA ****";
		Escribir "1. JUGAR";
		Escribir "2. REGLAS";
		Escribir "3. SALIR";
		Escribir "------------------------------------------";
		Escribir "ELIJA UNA OPCIÓN";
		Leer eleccion;
		
		Mientras eleccion <> 1 y eleccion <> 2 y eleccion <> 3 Hacer
			Escribir "Opción invalida, intente de nuevo...";
			leer eleccion;
		FinMientras
		
		Segun eleccion Hacer
			1:
				Limpiar Pantalla;
				Escribir "**** JUGAR ****";
				Escribir " (!) Siga las instrucciones (!)";
				Escribir "¿Quiere tirar los dados?";
				Escribir "1. SI";
				Escribir "2. NO";
				Leer resp;
				
				Segun resp hacer
					1:
						//______________________________________________________________________//
						//REEMPLZAAR ÉSTA PARTE POR CÓDIGO DE VERIFICACIÓN PARA PROBAR CADA CASO AISLADO 
						para i <- 1 hasta 5 Hacer
							Escribir "Tirando dados....";
							
							Segun i Hacer
								1: 
									num1 <- Aleatorio(1,6);
									Escribir "Primera tirada: ",num1;
									
									Segun num1 Hacer
										1:
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
									num2 <- Aleatorio(1,6);
									Escribir "Segunda tirada: ",num2;
									
									Segun num2 Hacer
										1:
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
									num3 <- Aleatorio(1,6);
									Escribir "Tercera tirada: ",num3;
									
									Segun num3 Hacer
										1:
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
									num4 <- Aleatorio(1,6);
									Escribir "Cuarta tirada: ",num4;
									
									Segun num4 Hacer
										1:
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
									num5 <- Aleatorio(1,6);
									Escribir "Quinta tirada: ",num5;
									
									Segun num5 Hacer
										1:
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
						//REEMPLZAAR ÉSTA PARTE POR CÓDIGO DE VERIFICACIÓN PARA PROBAR CADA CASO AISLADO ^^^^
						//______________________________________________________________________//
						Escribir "------------------------------------------";
						Escribir "**** RESULTADOS ****";
						//------------------------------------------------------------------------------------//
						//CASOS GENERALA
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
						si lado1 == 4 Entonces
							Escribir "PÓKER";
							Escribir "-----------------------------------";
						SiNo
							si lado2 == 4 Entonces
								Escribir "PÓKER";
								Escribir "-----------------------------------";
							SiNo
								si lado3 == 4 Entonces
									Escribir "PÓKER";
									Escribir "-----------------------------------";
								SiNo
									si lado4 == 4 Entonces
										Escribir "PÓKER";
										Escribir "-----------------------------------";
									SiNo
										si lado5 == 4 Entonces
											Escribir "PÓKER";
											Escribir "-----------------------------------";
										SiNo
											si lado6 == 4 Entonces
												Escribir "PÓKER";
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
											si lado6 == 3 y (lado1 == 2 o lado2 == 2 o lado3 == 2 o lado4 == 2 o lado6 == 2) Entonces
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
						//CASO SIN CATEGORIA
						Si poker == falso y full == falso y generala == falso y escalera == Falso Entonces
							Escribir "SIN CATEGORIA";
							Escribir "-----------------------------------";
						SiNo
							Si num1 <> num2 y num2 <> num3 y num3 <> num4 y num4 <> num5 y escalera == Falso Entonces
								Escribir "SIN CATEGORIA";
								Escribir "-----------------------------------";
							FinSi
						FinSi
						//------------------------------------------------------------------------------------//
					2:
						Limpiar Pantalla;
						Escribir "-----------------------------------";
						Escribir "Volviendo al menú...";
						Escribir "-----------------------------------";
				FinSegun
				
			2:
				Limpiar Pantalla;
				Escribir "**** REGLAS ****";
				Escribir "El jugador lanzará dos dados, dependiendo de la secuencias de números obtenidos por los lanzamientos se le asignará una categoría";
				Escribir " Categorías: ";
				Escribir "° Si ningun número es igual es: SIN CATEGORIA";
				Escribir "° Si hay tres números iguales distintos de otro par iguales es: FULL";
				Escribir "° Si hay cuatro números iguales es: POKER";
				Escribir "° Si los números son crecientes es: ESCALERA";
				Escribir "° Si hay cinco números iguales es: GENERALA";
				Escribir "------------------------------------------";
				
			3:
				Limpiar Pantalla;
				Escribir "Saliendo del programa...";
				bandera <- falso;
		FinSegun
	Hasta Que bandera = falso;
FinProceso