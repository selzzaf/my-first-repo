# Définition des variables
README = README.md
SCRIPT = guessinggame.sh

# Règle par défaut
all: $(README)

$(README): $(SCRIPT)
	echo "# Projet Guessing Game" > $(README)
	echo "" >> $(README)
	echo "## Date et heure de génération" >> $(README)
	date >> $(README)
	echo "" >> $(README)
	echo "## Nombre de lignes de code" >> $(README)
	wc -l < $(SCRIPT) | awk '{print $$1 " lignes"}' >> $(README)

clean:
	rm -f $(README)
