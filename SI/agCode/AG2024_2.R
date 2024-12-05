
N = 150 
set.seed(42)
PROBLEM = sample(x=-1000:1000, size = N)

# -------------------------------
# -------------------------------

fitness = function(individual, PROBLEM) {

	ids0 = which(individual == 0)
	ids1 = which(individual == 1)
	fit  =  abs(sum(PROBLEM[ids0]) - sum(PROBLEM[ids1])) 
	return(fit)
}

# -------------------------------
# -------------------------------

tournamentSelection = function(population, population.fitness, k = 3) {

	contenders = sample(x = 1:length(population.fitness), size = k)
	# print(contenders)
	# print(population.fitness[contenders])
	id.best = which.min(population.fitness[contenders])
	# print(id.best)
	winner = contenders[id.best]
	# print(winner)
	return(population[winner,])
}

# -------------------------------
# -------------------------------

onePointCrossover = function(parent1, parent2) {
	# definir aleatoriamente um ponto de corte
	cutoff = sample(x=2:(N-1), size = 1)
	child1 = c(parent1[1:cutoff], parent2[(cutoff+1):N])
	child2 = c(parent2[1:cutoff], parent1[(cutoff+1):N])
	obj = list(child1 = child1, child2 = child2)
	return(obj)
}

# -------------------------------
# -------------------------------

onePointMutation = function(individual, mutation.prob = 1/N) {

	# encontrar a posicao que pode ser mutada
	position = sample(x=1:N, size = 1)
	# calcular a probabilidade de mutar ou nao
	prob = sample(x=0:1000, size = 1)/1000

	if( prob <= mutation.prob) {
		print("mutou")
		# verificar se muda ou nao o gene
		# (0 -> 1, 1 -> 0)
		if(individual[position] == 0) {
			individual[position] = 1
		} else {
			individual[position] = 0
		}
	}
	return(individual)
}

# -------------------------------
# -------------------------------

geneticAlgorithm = function(pop.size = 100, n.generations = 10, k = 3) {

	# criar uma população inicial (POP.SIZE)
	population = matrix(0, nrow = pop.size, ncol = N)
	population.fitness = array(0, dim = pop.size)
 	for(i in 1:pop.size) {
		population[i, ] = sample(x=0:1, size = N, replace = TRUE)
		population.fitness[i] = fitness(individual = population[i,], 
 			PROBLEM = PROBLEM)
 	}

 	# variaveis de controle
 	generations = 0
 	best.fitness = min(population.fitness)
 	id.best = which.min(population.fitness)
	best.individual = population[id.best, ]
	average.fitness.epoch = c()

	# Criterio de parada (se tiver algum individuo cujo fitness = 0 
	#   OU nro de geracoes == Limiar)
	while(generations <= n.generations & best.fitness != 0) {

	#	Gerar uma populacao filha (POP.SIZE/2)
		new.population = matrix(0, nrow = pop.size, ncol = N)
		new.population.fitness = array(0, dim = pop.size)
	
		for(k in 1:(pop.size/2)) {

	#		selecionar um pai Pai1
			parent1 = tournamentSelection(population = population, 
				population.fitness = population.fitness, k = k)
	#       selecionar um pai Pai2
			parent2 = tournamentSelection(population = population, 
				population.fitness = population.fitness, k = k)

	#       F1, F2 = Crossover(Copia(pai1), Copia(Pai2))
			obj = onePointCrossover(parent1 = parent1, parent2 = parent2)

			child1 = onePointMutation(individual = obj$child1)
			child2 = onePointMutation(individual = obj$child2)
			
			# new.population[(2*k)-1, ]
			# new.population[2*k, ]
	#       NovaPopulacao = NovaPopulacao + {F1, F2}
			new.population[(2*k) -1,] = child1
			new.population[2*k, ]     = child2

		}
		# Avaliar o fitness da nova população
		for(i in 1:pop.size) {
			new.population.fitness[i] = fitness(individual = new.population[i,], 
	 			PROBLEM = PROBLEM)
	 	} 	
	 	
	 	# Calcular o fitness medio da populacao pai
	 	avg.fit = mean(population.fitness)
	 	average.fitness.epoch = c(average.fitness.epoch, avg.fit)

		cat(" - Geracao: ", generations, "\n")
	 	cat(" - Fitness Medio: ", avg.fit, "\n")
	 	cat(" - Best fitness: ", best.fitness, "\n")
	 	cat(" - Best id: ", id.best, "\n")
	 	cat(" ------------- \n")
	

	 	#  Substituicao da populacao (Populacao = NovaPopulacao)
		population = new.population
		population.fitness = new.population.fitness

		# Atualizar os critérios de parada
	 	best.fitness = min(population.fitness)
 		id.best = which.min(population.fitness)
		best.individual = population[id.best, ]
		generations = generations + 1
	}

	cat(" - Geracao: ", generations, "\n")
	cat(" - Fitness Medio: ", avg.fit, "\n")
	cat(" - Best fitness: ", best.fitness, "\n")
	cat(" - Best id: ", id.best, "\n")
	cat(" ------------- \n")
	average.fitness.epoch = c(average.fitness.epoch, avg.fit)

	ret = list(
		average.fitness.epoch = average.fitness.epoch, 
		last.population = population, 
		last.population.fitness = population.fitness,
		generations = generations,
		best.individual = best.individual,
		best.fitness = best.fitness
	)

	return(ret)
}

# -------------------------------
# -------------------------------
