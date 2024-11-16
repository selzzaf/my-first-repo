#!/bin/bash

# Fonction pour deviner le nombre de fichiers
function guess_files {
    local correct_count=$(ls -1 | wc -l) # Compte le nombre de fichiers dans le répertoire actuel
    while true; do
        echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"
        read guess

        if [[ $guess -eq $correct_count ]]; then
            echo "Félicitations ! Vous avez deviné le bon nombre de fichiers : $correct_count."
            break
        elif [[ $guess -lt $correct_count ]]; then
            echo "Trop bas ! Essayez à nouveau."
        else
            echo "Trop haut ! Essayez à nouveau."
        fi
    done
}

# Appel de la fonction
guess_files
