# =============================
# FILE DI CONFIGURAZIONE GLOBABILE PER GNUPLOT
# =============================

### Terminale Predefinito ###
# Se hai un terminale preferito, usa questo:
set terminal qt enhanced size 1200,800 font "Helvetica,12"

### Palette di Colori ###
# Palette predefinita con sfumature personalizzate
set palette defined ( 0 "blue", 1 "cyan", 2 "green", 3 "yellow", 4 "red" )

### Stili di Linea ###
# Definizione di stili predefiniti per coerenza
set style line 1 lc rgb '#0060ad' lw 2 pt 7   # Blu, linea spessa
set style line 2 lc rgb '#dd181f' lw 2 pt 5   # Rosso, linea media
set style line 3 lc rgb '#228B22' lw 1.5 pt 9 # Verde, linea sottile

# Imposta stili per la superficie
set pm3d depthorder
set pm3d lighting specular 0.5

### Griglia e Tics ###
# Abilita griglia e tic principali
set grid xtics ytics mxtics mytics

# Modifica l'aspetto dei tic (per grafici più precisi)
set tics font "Helvetica,10"
set xtics nomirror
set ytics nomirror

### Etichette e Titoli ###
# Titoli e assi predefiniti
set title "Grafico Generico" font "Helvetica-Bold,14"
set xlabel "Asse X" offset 0,-1 font "Helvetica,12"
set ylabel "Asse Y" offset -1,0 font "Helvetica,12"
set zlabel "Asse Z" offset -1,-1 font "Helvetica,12"

### Impostazioni 3D ###
# Configurazione predefinita per grafici 3D
set view 60, 30          # Vista angolare (elevazione, rotazione)
set hidden3d             # Attiva rendering con occlusione

### Output Automatico ###
# Nome del file di output (se usi terminali di tipo file)
set output "output.png"

### Legenda (Key) ###
# Posizione e aspetto della legenda
set key outside top center horizontal font "Helvetica,10"
set key box lc rgb "gray" lw 1

### Mouse e Interattività ###
# Abilita il mouse (solo per terminali interattivi)
set mouse

### Margini e Aspetto ###
# Margini predefiniti per grafici chiari
set lmargin 8
set rmargin 8
set tmargin 5
set bmargin 5

### Opzioni Avanzate ###
# Migliora l'aspetto di curve o superfici
set samples 100,100        # Densità punti di campionamento
set isosamples 50,50       # Densità punti per superfici 3D
set datafile separator "," # Default CSV delimiter

### Comandi di Avvio ###
# Puoi aggiungere comandi che vuoi eseguire all'avvio
print "Configurazione Gnuplot caricata con successo!"


