#Este script consige direcciones de Paginas Blancas

# pip  pip install requests
#pip install unidecode

import re
import requests
from conversion import convertir_lugar_a_numero
from unidecode import unidecode

nombre = "rosas"
distrito = "lima"

website = f"http://www.paginasblancas.pe/persona/s/{nombre}/{distrito}"

#print(website)


resultado = requests.get(website)

content = resultado.text

patron_direction = r'<span itemprop="streetAddress">\s*(.*?)\s*</span>'
patron_localidad = r'<span itemprop="addressLocality">\s*([\w\s\-\'áéíóúÁÉÍÓÚ]+)'


localidades = re.findall(patron_localidad, content)
direcciones = re.findall(patron_direction, content)
direcciones_limpias = [direccion.strip() for direccion in direcciones]
localidades_sin_acentos = [unidecode(localidad) for localidad in localidades]
localidades_mayusculas = [localidad.upper() for localidad in localidades_sin_acentos]


distritos = []
procincias = []

for lugar in localidades_mayusculas:
    partes = lugar.split(" - ")
    distritos.append(partes[0])
    procincias.append(partes[1])

distritos_actualizados = [distrito.replace('CALLAO CERCADO', 'CALLAO').replace('ATE-VITARTE', 'ATE') for distrito in distritos]
ubigeos=convertir_lugar_a_numero(distritos_actualizados)

if len(direcciones_limpias) != len(localidades):
    print("Error al conseguir los datos")
    print(len(direcciones_limpias)+"DIRECCIONES")
    print(len(localidades)+"LOCALIDADES")
   
else:
    for direccione, localidad,distrito,ubigeo,procincia in zip(direcciones_limpias,localidades_mayusculas,distritos_actualizados,ubigeos,procincias):
        print("'"+direccione+"','"+localidad+"','"+distrito+"','"+ubigeo+"','"+procincia+"'\n")




