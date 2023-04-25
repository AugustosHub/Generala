Proceso ParaAleatorio
	Definir i Como Entero;
	Definir num1, num2, num3, num4, num5 Como Entero;
	Definir lado1, lado2, lado3, lado4, lado5, lado6 Como Entero;
	
	lado1 <- 0;
	lado2 <- 0;
	lado3 <- 0;
	lado4 <- 0;
	lado5 <- 0;
	lado6 <- 0;
	
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
FinProceso
