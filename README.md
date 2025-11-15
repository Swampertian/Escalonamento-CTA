# Escalonamento-CTA
O respósitorio aborda um modelo **matemático** em programação linear sobre controle de trafégo aéreo.

#### Problema: 
 >  Estudo de caso real de um centro de controle brasileiro com 120 profissionais e 210 turnos mensal. Cujo objetivo é minimizar a carga
horária total, atendendo às demandas mínimas por turno, respeitando a disponibilidade da força de trabalho e garantindo a operação inin-
terrupta 24/7

#### Instalação após clonar o repositório:
  1. Linux ou WSL
      - ```sudo apt install glpk-utils```
      - ```cd escalonamento-CTA```
      - ```glpsol -m modelo.mod -d dados.dat```
  2. Windows
      - ```https://winglpk.sourceforge.net/```
      - ```configure o path```
      - ```glpsol -m modelo.mod -d dados.dat```

#### Tecnologia:
  - MathProg com GLPK

