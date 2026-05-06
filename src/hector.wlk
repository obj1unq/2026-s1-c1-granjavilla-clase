import wollok.game.*
import src.cultivos.*

object hector {
	var property position = game.center()
	const property image = "player.png"

	method plantaMaiz() {
		game.addVisual(new Maiz(position = self.position()))
	}

	// method plantar(cultivo) {
	// 	cultivo.position(position)
	// 	game.addVisual(cultivo)
	// }

	method rega() {
		self.cultivosDebajo().forEach({ unCultivo => unCultivo.regate() })
	}

	method cosecha() {
		self.cultivosDebajo().forEach({ unCultivo => unCultivo.cosechate() })
	}

	method cultivosDebajo() {
		const cultivos = game.colliders(self)
		if (cultivos.isEmpty()) self.error("No hay cultivos acá")
		return cultivos
	}
}