object tom {
	
	var energia = 50

	method puedeComer(distancia) {
		return (energia - distancia/2 >= 0)
	}

	method energiaQueAportaria(raton) {
		return 12 + raton.peso()
	}

	method quiereComer(raton, distancia) {
		return (self.puedeComer(distancia)) and 
			   (self.energiaQueAportaria(raton) > (distancia/2))
	}

	method comer(raton) {
		energia = energia + 12 + raton.peso()
	}
	
	method correr(distancia){
		energia = energia - (distancia/2)
	}
	
	method velocidadMaxima()  {
		return 5 + energia / 10 
	}

}

object jerry {
	
	var edad = 2

	method peso() {
		return edad * 20
	}

	method cumplir() {
		edad = edad + 1
	}

}

object nibbles {
	
	method peso() {
		return 35
	}

}


