touch Filtro_Avanzado.txt
echo "Mi IP Pública es: $(curl -s ifconfig.me)" >> Filtro_Avanzado.txt
echo "Mi Usuario es: $(sudo cat /etc/passwd | grep -o vagrant)" >> Filtro_Avanzado.txt
echo "Mi Hash de Usuario es: $(sudo cat /etc/shadow | grep vagrant)" >> Filtro_Avanzado.txt
