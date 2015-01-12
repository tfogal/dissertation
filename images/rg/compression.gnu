set terminal postscript color enhanced
set notitle
set output "Compression.eps"
set xlabel "Dataset" font ",22"
set ylabel "Byte Size" font ",22"
set xtics font ",20"
set ytics font ",20"
set autoscale

#set data style linespoints
set bars 2.5
set key top right

# pt: pointtype, ps: pointsize
# lw: linewidth

set style line 1 lc rgb "red" lw 6
set style line 2 lc rgb "blue" lw 8
set style line 3 lc rgb "green" lw 3
set style line 4 lc rgb "magenta" lw 4
set style line 7 lc rgb "blue" lw 4

#set grid
#set logscale x 2
#set xrange [0:192]
#set ytics format "%gx"

#set xtics ("" 1, "" 2, "" 4, "" 8, "16^3" 16, "32^3" 32, "64^3" 64, \
#           "128^3" 128, "256^3" 256)

set key font ",20"
set style data histogram
set style histogram cluster
set style fill solid 1.0 border lt -1
plot for [COL=2:3:1] 'sizes.data' using COL:xticlabels(1) title column
