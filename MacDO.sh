
#!/bin/bash
menu() {
    
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    BROWN='\033[0;33m'
    NC='\033[0m' 

    echo -e "${YELLOW}============================================${NC}"
    echo -e "        🍔 ${RED}Bienvenue dans MacDo${NC} 🍔"
    echo -e "              By ${GREEN}Rose__X${NC}"
    echo -e "         ${RED}My head is a jungle, jungle !${NC}"
    echo -e "     ${GREEN}https://www.youtube.com/watch?v=cvzu3bKgt5Y${NC}"    
    echo -e "${YELLOW}============================================${NC}"

    # Logo du burger
    echo -e "${BROWN}         ,--./,-.       ${NC}"
    echo -e "${BROWN}        / #      \\     ${NC}"
    echo -e "${BROWN}       |          |     ${NC}"
    echo -e "${BROWN}        \\        /     ${NC}"
    echo -e "${BROWN}         '--'--'       ${NC}"

    echo -e "${GREEN}       __  __            ____   ____       ${NC}"
    echo -e "${GREEN}      |  \\/  |          |  __| |  __|      ${NC}"
    echo -e "${GREEN}      | \\  / | __ _  ___| |__  | |__       ${NC}"
    echo -e "${GREEN}      | |\\/| |/ \` |/ _ \\  __| |  __|      ${NC}"
    echo -e "${GREEN}      | |  | | (_| |  __/ |__  | |__       ${NC}"
    echo -e "${GREEN}      |_|  |_|\\__,_|\\___|____| |____|      ${NC}"
    echo -e "${YELLOW}============================================${NC}"
}


menu
echo "🍟  Commandes en cours... 🍟"

echo "============================================"
echo "Voulez-vous changer l'adresse MAC ?"
echo "============================================"

echo "Voir ses interfaces (y/n) :" 
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

