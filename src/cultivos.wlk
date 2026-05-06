import wollok.game.*

class Maiz {
	const property position
	var property image = "corn_baby.png"
	
	method regate() {
		image = "corn_adult.png"
	}

	method cosechate() {
		game.removeVisual(self)
	}
}
