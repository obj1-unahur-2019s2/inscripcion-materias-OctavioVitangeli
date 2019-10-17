class Estudiantes{
	var aprobaciones = []
	var carreras = []
	
	method materiasAprobadas(materia,nota){
		if( not aprobaciones.any({aprob => aprob.materia()==materia})){
			aprobaciones.add(new Aprobacion(nota = nota,materia = materia))
		}
		else {self.error("ya esta aprobada")}
	}
	method materiasDeLaCarrerInscripto(){
		return carreras.flatMap({car => car.materias()})
	}
	method tieneAprobadaLaMateria(materia){
		return aprobaciones.any({mat => aprobaciones.contains(materia)})
	}
	method cantidadDeMateriasAprobadas(){
		return aprobaciones.size()
	}
	method promedioDeAprobaciones(){
		return aprobaciones.sum({aprob => aprob.nota()}) / self.cantidadDeMateriasAprobadas()
	}
	
}
class Aprobacion{
	var property nota
	var property materia
	
}
class Materia{
	var property nombreMateria
}
class Carrera{
	var materias = []
	
	method materiasDeLaCarrera(materia){
		materias.add(materia)
	}
}