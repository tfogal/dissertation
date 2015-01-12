from pylab import *



X = np.linspace(0, 192, 192*2, endpoint=True)

overhead2 = (X+2)*(X+2)*(X+2) / (X*X*X)
overhead4 = (X+4)*(X+4)*(X+4) / (X*X*X)

# fig = figure(figsize=(8,6), dpi=80) # default
fig = figure(figsize=(8,3), dpi=80) # default
fig.subplots_adjust(left=0.075, right=0.99, bottom=0.15, top=0.9, wspace=0, hspace=0)

ax = fig.add_subplot(111)
ax.plot(X,overhead2, color='r', linewidth=1.5, linestyle='-', label='2 voxel overlap')
ax.plot(X,overhead4, color='b', linewidth=1.5, linestyle='--', label='4 voxel overlap')

majorLocator = MultipleLocator(5)
majorFormatter = FormatStrFormatter('%dx')
ax.yaxis.set_major_locator(majorLocator)
ax.yaxis.set_major_formatter(majorFormatter)

majorLocator = MultipleLocator(20)
majorFormatter = FormatStrFormatter('%d')
ax.xaxis.set_major_locator(majorLocator)
ax.xaxis.set_major_formatter(majorFormatter)

ax.grid(which='major', axis='y', linewidth=0.75, linestyle='-', color='0.75')
ax.grid(which='major', axis='x', linewidth=0.25, linestyle='-', color='0.75')
ax.set_axisbelow(True)

ax.set_ylim(0, 30)
ax.set_xlim(0, 192)
title("Ghost data overhead")
ax.set_ylabel('Overhead factor')
ax.set_xlabel('Brick size (voxels cubed)')

ax.legend()

savefig('BS-overhead.pdf', dpi=300)
show()