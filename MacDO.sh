
#!/bin/bash
menu() {
echo "============================================"
echo "        🍔 Bienvenue dans MacDo 🍔"
echo "              By Rosé_and_X"
echo "============================================"
echo "       __  __            ____   ____       "
echo "      |  \/  |          |  __| |  __|      "
echo "      | \  / | __ _  ___| |__  | |__       "
echo "      | |\/| |/ _\` |/ _ \  __| |  __|      "
echo "      | |  | | (_| |  __/ |__  | |__       "
echo "      |_|  |_|\__,_|\___|____| |____|      "
echo "============================================"
}

menu
echo "🍟  Commandes en cours... 🍟"

echo "============================================"
echo "Voulez-vous changer l'adresse MAC ?"
echo "============================================"

echo "Voir ses interfaces y/n" 
read Vinter
oui="y"
OUI="Y"
if  [ "$Vinter" = "$oui" ]; then 
	
	ifconfig
elif [ "$Vinter" = "$oui" ]; then
	ifconfig
else 

	echo ""
fi



echo "============================================"
echo "Sélectionnez l'interface que vous voulez modifier :"
read inter
ifconfig "$inter" down
echo "============================================"
clear 
menu
echo "============================================"
echo "Votre interface $inter a bien été désactivée."
echo "============================================"

echo "Génération de votre adresse MAC aléatoire..."

macchanger -r "$inter"

ifconfig "$inter" up

ifconfig "$inter"

echo  "Merci pour votre commande 🍟🍔..."

