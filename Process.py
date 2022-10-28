"""
This will count the frequency of the given IDs and plot the top n occurence. Then it plots a bar figure and export as a pdf file.

"""

import argparse
import numpy as np
import itertools
import matplotlib.pyplot as plt

def Count(filename):
    with open(filename,'r') as f:
        lines = f.readlines()
    l=[]
    for line in lines:
        l.append([int(i) for i in line[:-1].split(';') if i.isdigit()])
    lm = list(itertools.chain.from_iterable(l))
    (uniq, freq) = (np.unique(lm, return_counts=True))
    IDfreq = np.column_stack((uniq,freq))
    IDfreq_sort = IDfreq[IDfreq[:,1].argsort()[::-1]]
    return IDfreq_sort

def Plot(IDfreq_sort, topn):

    IDfreq_top = IDfreq_sort[:topn]
    
    fig = plt.figure(1,figsize =(10, 7))
    ax1 = fig.add_axes([0,0,1,1])

    ax1.bar(IDfreq_sort[:,0],IDfreq_sort[:,1])
    plt.xlabel('kpthesaurus IDs')
    plt.ylabel('Frequency')

    figname = 'fig_kpthesaurus_distribution.pdf'
    fig.savefig(figname, format='pdf',dpi=100,bbox_inches='tight', pad_inches=0)
    
    fig2 = plt.figure(2,figsize =(10, 7))
    ax2 = fig2.add_axes([0,0,1,1])
    ax2.bar([str(i) for i in IDfreq_top[:,0]],IDfreq_top[:,1])
    for i in ax2.patches:
        plt.text(i.get_x(), i.get_height()+2,
                str((i.get_height())),
                fontsize = 10, fontweight ='bold')
    plt.xlabel('kpthesaurus IDs')
    plt.ylabel('Frequency')

    figname2 = 'fig_kpthesaurus_top' + str(topn) + '.pdf'
    fig2.savefig(figname2, format='pdf',dpi=100,bbox_inches='tight', pad_inches=0)

    plt.show()

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Process output files.')
    parser.add_argument('filename', type=str,
                    help='filename')

    args = parser.parse_args()
    IDfreq = Count(args.filename)
    Plot(IDfreq, 30)
