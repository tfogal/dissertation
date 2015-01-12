set terminal postscript color enhanced
set notitle
set output "BS-overhead.eps"
set xlabel "Brick Size" font ",22"
set ylabel offset "-2,0" "Overhead Factor" font ",22"
set xtics font ",20"
set ytics font ",20"
set autoscale

#set data style linespoints
set bars 2.5
set key top right
set key spacing 1.5
set key font ",22"

# pt: pointtype, ps: pointsize
# lw: linewidth

set style line 1 lc rgb "red" lw 6
set style line 2 lc rgb "blue" lw 8
set style line 3 lc rgb "green" lw 3
set style line 4 lc rgb "magenta" lw 4
set style line 7 lc rgb "blue" lw 4

#set grid
#set logscale x 2

overhead(x) = (x+2)*(x+2)*(x+2) / (x*x*x)
overhead4(x) = (x+4)*(x+4)*(x+4) / (x*x*x)
set xrange [0:192]
set ytics format "%gx"
set key font ",20"
set size 1, 0.6

#set xtics ("" 1, "" 2, "" 4, "" 8, "16^3" 16, "32^3" 32, "64^3" 64, \
#           "128^3" 128, "256^3" 256)

plot overhead(x) ls 1 title "2 voxel overlap" with lines, \
  overhead4(x) ls 2 title "4 voxel overlap" with lines
