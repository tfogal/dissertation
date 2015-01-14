set terminal svg enhanced
set output "performance.svg"

set ylabel "Seconds" font ",20"
set xlabel "Program" font ",20"
set style fill solid 1.0
set boxwidth 0.20
set key autotitle columnhead
set xtics ("PsiPhi" 0, "Relax" 1, "Linpack" 2, "allocs" 3)
unset x2tics
set logscale y
plot \
  'runs.dat' using ($0-0.25):2 index 0 with boxes, \
  ''         using ($0-0.05):2 index 1 with boxes, \
  ''         using ($0+0.15):2 index 2 with boxes, \
  ''         using ($0+0.35):2 index 3 with boxes

#plot \
#  'PsiPhi' using 1:2:xtic(3) smooth unique with boxes title "PsiPhi", \
#  'relax' using 1:2:xtic(3) smooth unique with boxes title "relax"
