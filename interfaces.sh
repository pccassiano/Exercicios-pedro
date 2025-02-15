#!/bin/bash

#Pergunta se deseja sair
sair()
{
echo -n "Você deseja sair ? [s/n] "
read sairfun

if [ $sairfun = "n" ]
then
	$funcao
else
	exit
fi
}

#Fazer configuração estática
estatico() 
{

echo "" >> /etc/network/interfaces

#Verifica se foi digitado algo nas variáveis, se não, ele preenche ou ignora
	if [ -z $ip ]
	then
		ip="192.168.0.2"
		echo "address $ip" >> /etc/network/interfaces

	else

		echo "address $ip" >> /etc/network/interfaces

	fi

	
	if [ -z $mascara ]
	then
		mascara="255.255.255.0"
		echo "netmask $mascara" >> /etc/network/interfaces

	else

		echo "netmask $mascara" >> /etc/network/interfaces

	fi

	if [ -z $rede ]
	then
		echo "#network $rede" >> /etc/network/interfaces
	else
		echo "network $rede" >> /etc/network/interfaces
	fi

	if [ -z $broadcast ]
	then
		echo "#broadcast $broadcast" >> /etc/network/interfaces
	else
		echo "broadcast $broadcast" >> /etc/network/interfaces
	fi

	if [ -z $gateway ]
	then
		echo "#gateway $gateway" >> /etc/network/interfaces
	else
		echo "gateway $gateway" >> /etc/network/interfaces
	fi

	if [ -z $mac ]
	then
		echo "#hwaddress ether $mac" >> /etc/network/interfaces
	else
		echo "hwaddress ether $mac" >> /etc/network/interfaces
	fi
}
#Fim do estático


nova()
{

clear
funcao="nova"

#Verifica se existe uma pasta de configuração
if [ -e /interfaces ]
then
echo "A pasta de configurações já existe"
else
mkdir /interfaces
echo "A pasta de configurações foi criada"
fi
#Termina a verificação
echo    "============================================================"
echo    "|                    Nova configuração                     |"
echo    "============================================================"
echo -n " Escreva o nome da configuração: [sem espaço] "
read nome
echo    "============================================================"
echo ""
mii-tool
echo ""
echo    "============================================================"
echo -n " Escreva o nome da interface: [eth0] "
read interface

	if [ -z $interface]
	then
		interface="eth0"
	fi

echo    "============================================================"
echo -n " Escreva como deseja usar a interface: [dhcp/static] "
read modo
echo    "============================================================"
	case $modo in

	static)
	echo -n "Digite o endereço IP (ex. 192.168.0.2): "
	read ip
	echo -n "Digite a mascara (ex. 255.255.255.0): "
	read mascara
	echo -n "Digite a rede (não necessário): "
	read rede
	echo -n "Digite o endereço broadcast (não obrigatório): "
	read broadcast
	echo -n "Digite o gateway (não obrigatório): "
	read gateway
	echo -n "Digite o mac (não obrigatório): "
	read mac
	;;

	dhcp)
	echo "Usando configuração DHCP"
	;;
	*)
	echo "Esse modo não é válido"
	echo "Usando DHCP"
	modo="dhcp"
	;;
	esac
echo    "============================================================"
echo -n "Apagar todo arquivo de configuração? [s/n] "
read apagar


#Você não deseja apagar o arquivo todo

if [ $apagar = "n" -o $apagar = "não" ]
then
apagar=""
echo "" >> /etc/network/interfaces
echo "#Configuração: $nome" >> /etc/network/interfaces
echo "" >> /etc/network/interfaces
echo "auto $interface" >> /etc/network/interfaces
echo "iface $interface inet $modo" >> /etc/network/interfaces

	if [ $modo = "static" ]
	then
		estatico	
	fi

/etc/init.d/networking restart

echo ""
cat /etc/network/interfaces
echo ""

echo -n "Salvar a configuração como está [s/n] "
read salvar

	if [ $salvar = "s" ]
	then
		cp /etc/network/interfaces /interfaces/$nome
		echo "Salvo"		
		exit
	else
		echo "Não salvo"
		exit
	fi


fi

#Se for diferente de "n" ou "não" o script aparagá o arquivo
if [ $apagar="s" ]
then
apagar=""
echo "#Configuração: $nome" > /etc/network/interfaces
echo "" >> /etc/network/interfaces
echo "auto $interface" >> /etc/network/interfaces
echo "iface $interface inet $modo" >> /etc/network/interfaces

	if [ $modo = "static" ]
	then
		estatico
	fi

/etc/init.d/networking restart

echo ""
cat /etc/network/interfaces
echo ""

echo -n "Salvar a configuração como está [s/n] "
read guardar
	
	if [ $guardar = "s" ]
	then
		guardar=""		
		cp /etc/network/interfaces /interfaces/$nome
		echo "Salvo"		
		sair
	else
		echo "Não salvo"
		sair
	fi

fi
}



#Função para usar unir uma interface salva com a atual
unir()
{

clear
funcao="unir"

#Verifica se a pasta existe, se não ele cria uma
if [ -e /interfaces ]
then
echo "A pasta de configurações já existe"
else
mkdir /interfaces
echo "A pasta de configurações foi criada"
fi
#Termina a verificação da pasta

#Menu da função unir
echo "==================================================="
echo "|          Escolha o arquivo para unir            |"
echo "==================================================="
echo ""
ls /interfaces | more
echo ""
echo "==================================================="
echo ""
echo -n "Escolha: "
read escolha

	if [ -e /interfaces/$escolha ]
	then
		echo "" >> /etc/network/interfaces
		cat /interfaces/$escolha >> /etc/network/interfaces
		cat /etc/network/interfaces
		/etc/init.d/networking restart
	else
		echo "Arquivo não existe"
		sleep 2
		$funcao
	fi
}


#Função para usar as interfaces configuradas
configurada()
{

clear
funcao="configurada"

#Verifica se a pasta existe, se não ele cria

if [ -e /interfaces ]
then
echo "A pasta de configurações já existe"
else
mkdir /interfaces
echo "A pasta de configurações foi criada"
fi
#Termina a verificação da pasta

#Menu da fução configurada
echo "==================================================="
echo "|         Usar uma interface configurada          |"
echo "==================================================="
echo "|       Qual configuração você deseja usar:       |"
echo "==================================================="
echo ""
ls /interfaces | more
echo ""
echo "==================================================="
echo -n "Escolha: "
read escolha

	if [ -e /interfaces/$escolha ]
	then
		cp /interfaces/$escolha /etc/network/interfaces
		/etc/init.d/networking restart
		sair
	else
		echo "Essa configuração não existe!"
		sleep 2
		$funcao
fi
}

menu()
{

clear
funcao="menu"

#Menu principal
clear
echo "==================================================="
echo "|          O que você deseja fazer:               |"
echo "==================================================="
echo "| 1) Nova configuração                            |"
echo "| 2) Usar configuração                            |"
echo "| 3) Unir aquivo salvo com a configuração         |"
echo "==================================================="
echo "| q) Sair                                         |"
echo "==================================================="
echo ""
echo -n "Opção escolhida: "
read fazer

case $fazer in
1)
clear
nova

;;
2) 
clear
configurada
;;
3)
clear
unir
;;
q)
clear
exit
;;
*)
echo -n "Opção inválida"
sleep 2
menu
esac
}


#Iniciar a função do menu principal
menu

