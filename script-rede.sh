#!/bin/bash
#Configuração de Rede

#opcoes

funcao1 ()
{
echo "digite a interface a ser configurada"
read interf
sudo ifconfig $interf

echo "digite o endereço de IP da rede a ser configurado"
read ip
sudo ifconfig $interf $ip

echo "digite a mascara de rede"
read masc
sudo ifconfig $interf $masc

}

funcao2 ()
{
echo "Digite o endereço padrão do roteador "
read roteador_padrao
udo route add default gw $roteador_padrao
}

funcao3()
{

echo " Informe o endereço de uma rede para se criar rota"
read rede_rota
sudo route add -net $rede_rota

}

funcao4()
{
echo " digite a rota de uma rede qualquer que deseja remover "
read remove_rota
sudo route del default gw $remove_rota/16



echo "Deseja continuar?(s/n)"
read resp
}

funcao5()
{
echo "Digite o endereço de rota qualquer que deseja remover"
read remove_rota2
sudo route del -net $remove_rota2/16

}

funcao6()
{
echo "Informe a interface de rede que deseja desativar."
read rede_desat
sudo ifconfig $rede_desat dow

}

funcao7()
{
echo "Informe a interface de rede que deseja ativar "
read rede_ativar
sudo iconfig $rede_ativar up

}
funcao8()
{
echo " Informe a interface de rede para a renovação do empréstimo de IP "
read end_renov
sudo dhclient $end_renov

}

nome=S
while [ $nome != N ]
do
echo "******************************************************************************"
echo "Configurando uma de Rede - "
echo
echo "1 Configuração de rede"
echo "2 Criar uma rota padrão para o roteador ."
echo "3 Criar uma rota para uma rede qualquer ."
echo "4 Renovar a rota padrão criada "
echo "5 Renovar uma rota criada para uma rede qualquer."
echo "6 Desativar uma interface de rede. "
echo "7 Ativar uma interface de rede."
echo "8 Renovar o empréstimo de endereço IP junto ao servidor DHCP."
echo
echo "******************************************************************************"
echo

echo "Qual a sua opcao?"
read opcao

case $opcao in

1)
funcao1;;

2)
funcao2;;

3)
funcao3;;

4)
funcao4;;

5)
funcao5;;

6)
funcao6;;

7)
funcao7;;

8)
funcao8;;


*)
echo "opção Invalida"; sleep 3 ;;
esac
echo "Deseja Continuar (S/N)"
read nome
done