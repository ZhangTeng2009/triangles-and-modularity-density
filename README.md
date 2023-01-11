# triangles-and-modularity-density
Type: MARLB Code
Title: Detecting communities in complex networks using triangles and modulairty density
=================
Description：This program can be opened by matlab 2019. After opening it, you can can run it directly by running the script file named main.m.
This program detects the community structure of networks by integrating edge and triangular motif information.

Files:
1. motif_community_code_for_undirected_network: This file is used to detect the community structure of undirected networks.
2. motif_community_code_for_directed_network:  This file is used to detect the community structure of directed networks.

The first file contains the following nine files:
1) data: The data stores karate(Karate_club.csv), dolphin(dolphins[Edges].csv), scientist(sc.txt), LFR(network.dat) network information information;

2) main: The entrance of the program;

3) DataToMatrix.m: The function computing adjacent matrix of networks;

4) MotifToMatrix.m: The function computing adjacent matrix of the triangular motif in networks;

5) Algorithm1.m: The function detecting community based on spectral clustering;

6) Algorithm2.m: The function detecting community based on NMF;

7) spdiag.m: The function creating diagonal matrice;

8) symmf_anls.m: The function is a symmetric nonnegative matrix factorization algorithm;

9) nnlsm_blockpivot.m:  The function is Non-negative constrained least squares； 

The second file contains the following nine files:

1) data: The data stores karate(Karate_club.csv), dolphin(dolphins[Edges].csv), scientist(sc.txt), LFR(network.dat) network information information;

2) main: The entrance of the program;

3) MotifAdjacency.m: The function computing adjacent matrix of the triangular motif in networks;

4) Algorithm1.m: The function detecting community based on spectral clustering;

5) Algorithm2.m: The function detecting community based on NMF;）

6) DirectionalBreakup.m: The function returns the bidirectional, unidirectional, and undirected versions of the adjacency matrix A;

6) spdiag.m: The function creating diagonal matrice;

7) symmf_anls.m: The function is a symmetric nonnegative matrix factorization algorithm;

8) nnlsm_blockpivot.m:  The function is Non-negative constrained least squares；

The results:
1)  The disp(communities)  prints out the results of community partitioning .
