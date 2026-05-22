import src.cultivos.*
object plantador {
    const tick = game.tick(500, { self.plantaUnMaiz() }, true)

    method plantaUnMaiz() {
        game.addVisual(new Maiz(position = self.posicionRandomVaciaMasCheto()))
    }

    method posicionRandomVacia() {
        const x = 0.randomUpTo(game.width()).round()
        const y = 0.randomUpTo(game.height()).round()
        const posicion = game.at(x, y)
        if (posicion.allElements().isEmpty())
            return posicion
        else
            return self.posicionRandomVacia()
    }

    method posicionRandomVaciaMasCheto() {
        return self.todasLasPosicionesDelJuego().randomized().find({pos => pos.allElements().isEmpty()})
    }

    method todasLasPosicionesDelJuego() =
        (0..game.width()-1).map({x =>
            (0..game.height()-1).map({y => 
                game.at(x, y)
            })
        }).flatten()
    

    method empezaAPlantarMaiz() {
        tick.start()
    }

    method dejarDePLantar() {
        tick.stop()
    }
}