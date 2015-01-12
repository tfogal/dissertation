set terminal postscript color enhanced
set notitle
set output "render-breakdown.eps"
set xlabel "Dataset" font ",22"
set ylabel "Time (seconds)" font ",22"
set xtics font ",20"
set ytics font ",20"
set autoscale

set style data histograms
set style histogram rowstacked gap 1
set boxwidth 1 relative
set style fill solid border -1

set key outside top center horizontal
set key autotitle columnheader

#set yrange [0:40000]
set xtics right rotate by 45
set grid y

#  #'' using ($11-$12-$13-$14-$15-($16-$2-$3-$4-$6-$7)) title "UploadBrick", \
#
plot \
  newhistogram "Rebricked" lt 1, \
  'breakdown.txt' \
  using 2:xticlabels(1), \
  '' using  3 , \
  '' using  4 , \
  '' using  6 , \
  '' using  7 , \
  '' using  8 , \
  '' using  9 , \
  '' using 10 , \
  '' using ($11-$12-$13-$14-$15-$16) title "UploadBrick", \
  '' using 12 , \
  '' using 13 , \
  '' using 14 , \
  '' using 15 , \
  '' using ($16-$2-$3-$6-$7) title "GetBrick", \
  newhistogram "Vanilla" lt 1, \
  'native.txt' \
  using 2:xticlabels(1) notitle, \
  '' using  3 notitle, \
  '' using  4 notitle, \
  '' using  6 notitle, \
  '' using  7 notitle, \
  '' using  8 notitle, \
  '' using  9 notitle, \
  '' using 10 notitle, \
  '' using ($11-$12-$13-$14-$15-$2-$3-$4-$6-$7) title "UploadBrick", \
  '' using 12 notitle, \
  '' using 13 notitle, \
  '' using 14 notitle, \
  '' using 15 notitle \
  ;
