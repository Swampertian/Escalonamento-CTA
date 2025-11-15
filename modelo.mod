# ============================================================
# Modelo: Escalonamento de Controladores de Tráfego Aéreo
# ============================================================

# Conjunto de turnos-
set I := 1..7;

# Parâmetros 
param h {I};     # carga horária por turno
param d {I};     # demanda mínima diária
param S;         # total de profissionais

#  Variáveis 
var x {I} >= 0, integer;

#  Função Objetivo 
minimize TotalHoras:
    sum {i in I} (h[i] * x[i]);

# Restrição de demandas mínimas 
s.t. Demandas {i in I}:
    x[i] >= d[i];

# Restrição de limite total de profissionais 
s.t. LimiteTotal:
    sum {i in I} x[i] <= S;

# ============================================================
# Impressão formatada dos resultados
# ============================================================

solve;

printf "\n===========================================\n";
printf "        RESULTADOS DO MODELO\n";
printf "===========================================\n\n";

printf "Total de horas trabalhadas: %g\n\n",
       sum {i in I} (h[i] * x[i]);

printf "Alocação por turno:\n";
printf "Turno | x[i] | Horas * Pessoas\n";
printf "-------------------------------------------\n";

for {i in I} {
    printf "%5d | %4d | %g\n",
           i, x[i], (h[i] * x[i]);
}

printf "-------------------------------------------\n\n";

end;
