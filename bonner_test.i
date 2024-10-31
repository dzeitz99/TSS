 MESSAGE: xsdir=xsdir_mcnp6.2_endf80,71

c
c bonner model take from "Calculations of the Repsonse Functions of Bonner 
c  Spheres with a Spherical 3He Proportional Counter Using a 
c  Realistic Detector Model"  by B. Wiegel, et al.
c
c
c  128 log-spaced energy points from 1e-12 to 1e3 MeV 
c 
c @@@ OPTIONS =   -jobdir /mnt/nfs/home/zeitz_d/BSS_NEU/Resp/vary_inner_outer_pe/35W_full
c @@@ ENERGY_POS =   1.0000E-12  1.7227E-12  2.9678E-12 \
c @@@                5.1128E-12  8.8081E-12  1.5174E-11 \
c @@@                2.6141E-11  4.5034E-11  7.7583E-11 \
c @@@                1.3365E-10  2.3025E-10  3.9667E-10 \
c @@@                6.8335E-10  1.1772E-09  2.0281E-09 \
c @@@                3.4939E-09  6.0190E-09  1.0369E-08 \
c @@@                1.7864E-08  3.0774E-08  5.3016E-08 \
c @@@                9.1333E-08  1.5734E-07  2.7106E-07 \
c @@@                4.6697E-07  8.0447E-07  1.3859E-06 \
c @@@                2.3876E-06  4.1131E-06  7.0859E-06 \
c @@@                1.2207E-05  2.1030E-05  3.6229E-05 \
c @@@                6.2413E-05  1.0752E-04  1.8523E-04 \
c @@@                3.1911E-04  5.4974E-04  9.4706E-04 \
c @@@                1.6315E-03  2.8107E-03  4.8422E-03 \
c @@@                8.3418E-03  1.4371E-02  2.4757E-02 \
c @@@                4.2650E-02  7.3475E-02  1.2658E-01 \
c @@@                2.8622E-01  4.9308E-01  8.4944E-01 \
c @@@                1.4634E+00  2.5210E+00  4.3431E+00 \
c @@@                7.4820E+00  1.2890E+01  2.2205E+01 \
c @@@                3.8254E+01  6.5902E+01  1.1353E+02 \
c @@@                1.9559E+02  4.4225E+02  5.8047E+02 \
c @@@                7.6189E+02  1.0000E+03
c
c @@@ SOURCE_POS =   0 
c @@@ DENSITY_FACTOR = 1.0
c @@@ THICKNESS_OUTER_PE = 8.0
c @@@ THICKNESS_INNER_W = 2.5
c
c @@@ PE_DENSITY = (DENSITY_FACTOR * (-0.964) )
c
c    
10504 102 -3.76827E-03 -10543 #10511 #10523 #10513 #10520 imp:n=1              $ Messkugel gefuellt mit 3He
10505 102 -3.76827E-03 +10543 -10552 +10514 -10517 #10513 imp:n=1              $ li. kugelnahes Vol. mit 3He
10506 102 -3.76827E-03 -10552 +10512 -10514 #10515        imp:n=1              $ " kugelfernes " " "
10507 102 -3.76827E-03 +10543 -10552 +10518 -10527 #10520 #10531 imp:n=1       $ re. k.nahes " " "
10508 102 -3.76827E-03 -10555 +10527 -10531        imp:n=1                     $ " kugelfernes " " "
10510 103 -7.86     -10542 +10543 
                    #10505 #10507 #10513 #10511 #10520 #10523 imp:n=1       $ Messkugelwand
10511 103 -7.86     -10551 +10552 +10511 -10517  imp:n=1                    $ linker Stutzen
10512 103 -7.86     -10552 +10511 -10512         imp:n=1                    $ linker Deckel
10513 103 -7.86     -10553 +10554 +10514 -10515  imp:n=1                    $ linker Drahthalter
10515 105 -3.965    -10552 +10554 +10513 -10514  imp:n=1                    $ linker Keramikhalter
10520 103 -7.86     -10553 +10555 +10525 -10526  imp:n=1                    $ rechter Drahthalter
10521 103 -7.86     -10561 +10563 -10521 +10522  imp:n=1                    $ rechter Ringdeckel r. St.
10522 103 -7.86     -10561 +10562 -10522 +10523  imp:n=1                    $ rechter Stutzen Mittelteil
10523 103 -7.86     -10561 +10552 -10523 +10518  imp:n=1                    $ linker Ringdeckel r. St.
10525 103 -7.86     -10552 +10563 +10527 -10528  imp:n=1                    $ schmaler Zwischenring
10526 104 -1.12E-3  -10562 +10563 +10528 -10522 #10523 imp:n=1              $ grosser Hohlraum (Luft)
10527 104 -1.12E-3  -10563 +10532 -10522         imp:n=1                    $ kleiner Hohlraum (Luft)
10528 0             -10563 +10522 -10533         imp:n=1                    $ Teflon-Ausfuehrleitung (PE)
10529 103 -7.86     -10563 +10531 -10532         imp:n=1                    $ Deckel Innenstutzen
10530 103 -7.86     -10563 +10555 +10530 -10531  imp:n=1                    $ Innenstutzen
10531 105 -3.965    -10563 +10555 +10529 -10530  imp:n=1                    $ rechter Keramikhalter
10532 101 -0.946    -10561 +10563 +10521 -10533  imp:n=1                    $ Leerraum (0) / PE (1 -0.946)
c
c Sphere configurations
c
c
c 12" PE
c 10503 101 -0.946    -10541 +10544 (10561:-10507:10533)              $ aeussere PE-Kugel
c 10509 101 -0.946    -10544  10542 (10551:10507:-10511) 
c                                   (10561:-10507:10521)               $ innere PE-Kugel
c
c
c 7" PE
c 10503 101 -0.946  -10541 +10544 (10561:-10507:10533)              $ aeussere PE-Kugel
c 10509 101 -0.946    -10544  10542 (10551:10507:-10511) 
c                                   (10561:-10507:10521)               $ innere PE-Kugel
c
c
c 3" PE
c 10503 0     -10541 +10564 (10561:-10507:10533)              $ aeussere PE-Kugel COR MAT
c 10509 101 PE_DENSITY  -10564  10542 (10551:10507:-10511) 
c                                 (10561:-10507:10521)               $ innere PE-Kugel COR MAT
c
c
c 7" PE + Cu layer
c 10503 501 -1.29E-3  -10541 +10544 (10561:-10507:10533)              $ aeussere PE-Kugel
c 10509 101 -0.946    -10544  10566 (10551:10507:-10511) 
c                                   (10561:-10507:10521)               $ innere, outside Cu
c 10533 30  -8.96     -10566  10565 (10551:10507:-10511) 
c                                   (10561:-10507:10521)
c 10534 101 -0.946    -10565  10542 (10551:10507:-10511) 
c                                   (10561:-10507:10521) 
c
c
c bare w 1.5 mm Cd 
c 10503 501 -1.29E-3  -10541 +10544 (10561:-10507:10533)              $ aeussere PE-Kugel
c 10509 501 -1.29E-3  -10544  10567 (10551:10507:-10511) 
c                                   (10561:-10507:10521)               $ innere, outside Cu
c 10533 106 -8.65     -10567  10566 (10551:10507:-10511) 
c                                   (10561:-10507:10521)
c 10534 501 -1.29E-3  -10566  10542 (10551:10507:-10511) 
c                                   (10561:-10507:10521) 
c
c
c 7 inches
 20120 0    -20120 +20110 (10561:-10507:10533) imp:n=1 
 20110 0    -20110 +20100 (10561:-10507:10533) imp:n=1
 20100 0    -20100 +20090 (10561:-10507:10533) imp:n=1
 20090 0    -20090 +20080 (10561:-10507:10533) imp:n=1
 20080 0    -20080 +20070 (10561:-10507:10533) imp:n=1
 20070 0     -20070 +20060 (10561:-10507:10533) imp:n=1
 20060 0     -20060 +20050 (10561:-10507:10533) imp:n=1
 20050 0    -20050 +20045 (10561:-10507:10533) imp:n=1
 20045 0     -20045 +20040 (10561:-10507:10533) imp:n=1
 20040 112 -2.2   -20040 +20035 (10561:-10507:10533) imp:n=1
 20035 111 -13.03    -20035 +20030 (10551:10507:-10511) 
                                   (10561:-10507:10533) imp:n=4
 20030 113 -1.24    -20030 10542 (10551:10507:-10511)
                                   (10561:-10507:10521)  imp:n=8     $ innere PE-Kugel
c
c outside
c
998  0   -999 20120 imp:n=1
999  0    999 imp:n=0 

c
c
c
c
10501 109 PX -25.000         $ hintere Kastenflaeche
10502 109 PX +25.000         $ vordere "
10503 109 PY -25.000         $ linke "
10504 109 PY +25.000         $ rechte "
10505 109 PZ -25.000         $ untere "
10506 109 PZ +25.000         $ obere "
10507 109 PY 0.000           $ Hilfsebene zur Unterscheidung links-rechts
10511 109 PY -2.500          $ Aussenseite linker Deckel
10512 109 PY -2.400          $ Innenseite " "
10513 109 PY -2.180          $ linke Seite linker Keramikisolator
10514 109 PY -1.850          $ rechte Seite " " & l. S. linker Drahthalter
10515 109 PY -1.588          $ rechte Seite linker Drahthalter
10517 109 PY -1.500          $ rechte Seite linker Hilfsring
10518 109 PY +1.400          $ linke Seite rechter "
10521 109 PY +11.400         $ Aussenseite rechter Stutzenring
10522 109 PY +8.900          $ Innenseite " "
10523 109 PY +3.100          $ Innenseite linker "
10525 109 PY +1.550          $ linke Seite rechter Keramikhalter
10526 109 PY +1.800          $ rechte " " "
10527 109 PY +2.400          $ linke Seite Halterungsring
10528 109 PY +2.480          $ rechte " "
10529 109 PY +2.150          $ linke Seite rechter Keramikisolator
10530 109 PY +4.050          $ rechte " " "
10531 109 PY +6.950          $ Hilfsebene
10532 109 PY +7.950          $ Hilfsebene
10533 109 PY +12.400         $ rechtes Ende Ausfuehrleitung
10541 109 SO +8.89          $ Polyethylen Kugel => SI1 (Radius=NAME*1.27)
10542 109 SO 1.650           $ Messkugelwand aussen
10543 109 SO 1.600           $ " innen
10544 109 SO 6.000          $ Unterscheidung der IMP innerhalb PE-Kugel
10551 109 CY 0.570           $ aussen linker Stutzen
10552 109 CY 0.400           $ innen linker / innen_1 rechter Stutzen
10553 109 CY 0.180           $ aussen linker/rechter Drahthalter
10554 109 CY 0.050           $ innen linker Drahthalter
10555 109 CY 0.080           $ innen rechter Drahthalter
10561 109 CY 0.635           $ aussen rechter Stutzen
10562 109 CY 0.510           $ innen_2 " "
10563 109 CY 0.250           $ aussen innerer Edelstahlblock
10599 109 CX 1.65           $ aussen zylinder
c
c BS layers
c
c 10564 109 SO 3.810           $ 3" diameter
c 10565 109 SO 5.080           $ 4" diameter
c 10566 109 SO 6.350           $ 5" diameter
c 10567 109 SO 6.500           $ 5" + 1.5 mm
c
c Concentric layers
20030 109 SO THICKNESS_INNER_W  $ 3 inches D
20035 109 SO THICKNESS_OUTER_PE $ 3.5 inches D
20040 109 SO 9.5  $ 4 inches D
20045 109 SO 9.55 $ 4.5 inches D
20050 109 SO 9.6  $ 5 inches D
20060 109 SO 9.65  $ 6 inches D
20070 109 SO 9.7  $ 7 inches D
20080 109 SO 10.16 $ 8 inches D
20090 109 SO 11.43 $ 9 inches D
20100 109 SO 12.7  $ 10 inches D
20110 109 SO 13.97 $ 11 inches D
20120 109 SO 15.24 $ 12 inches D
c outside
c
999    SO  200

c
c
c source
c
c
mode n p e h 
C rand gen=2 seed=1
c imp:n 1 22r 2 4 1 0
sdef       tr=1
           par=n
           erg=d1
           rad=d2
           axs=1 0 0
           ext=0
           pos=0 0 0
           vec=1 0 0
           dir=1
c
c
c  energy spectrum
c
c si1  H           1e-12  2047ilog 1e3  
c sp1         0    1      2047r   
si1   L   ENERGY_POS
sp1           1    
c
c radial dists
si2          0 9.5  $ CORR RAD
c
c
tr1 -20 SOURCE_POS 0
c
c
c
*tr109   0 0 0
           0    90   90
          90    90    0
          90   180   90      1
c
c
c  weight windows
c
c
c wwp:n j j j j -1 0x
c wwg    14  0  0 j j j j 0
c mesh   geom sph
c        origin  0 0 0
c        ref    -15.9  0  0
c        axs    0  0  1
c        imesh  1.6 10i 16
c        jmesh   6 28i 180
c        kmesh   6 58i 360
c
c
c Run stuff
c
c
nps 1e6
prdmp j 1e6 1 4 1e6
c cut:n j j 0 0
phys:n 1000 1000
mphys on
c
c
c  materials
c
M101 nlib=60c
       1001 0.66666667
       6000 0.33333333          $ Polyethylen == (C2H4)n
MT101  poly.01t                                        $ H in CH2 bei 300 K
M102   2003.60c   6.9418960245E-01
       36078.50c   1.0703363914E-03
       36080.50c   6.9724770642E-03
       36082.50c   3.5412844037E-02
       36083.50c   3.5137614679E-02
       36084.50c   1.7431192661E-01
       36086.50c   5.2905198777E-02               $ 3He+Kr
M103 nlib=60c
       26054  0.0435                                        $ Edelstahl
       26056  0.6879
       26057  0.0165
       26058  0.0021
       24050  0.0065
       24052  0.1257
       24053  0.0143
       24054  0.0035
       28058  0.0681
       28060  0.0262
       28062  0.0036
       28064  0.0009
M104   6000.60c   0.000151   $ C
       7014.60c   0.784437   $ N
       8016.60c   0.210750   $ O
       18000.59c  0.004671  $ Ar
                                     $ Luft
M105 nlib=60c
       13027  0.4
       8016  0.6                                           $ Keramik (Al2O3)
M106   48106 .0125                                          $ Cd
       48108 .0089
       48110 .1249
       48111 .128
       48112 .2413
       48113 .1222
       48114 .2873
       48116 .0749
c Beton Shielding
M107   1001.60c -3.3E-3
       8016.60c -5.597E-1 
       13027.60c -4.86E-2
       14000.50c -1.942E-1 
       20000.60c -1.942E-1
MT107  lwtr.01t	                        $ H in light water bei 300 K
M108   29000.50c 1.00                   $ Copper
M110   82000 1.00                       $ Lead
M111    1001.60c   0.08888822             $H
        6000.60c   0.0666666666           $C
        8016.60c   0.4444444411             $O Polylactic acid == (C3H4O2)n
        5011.60c   0.04000000                 $B
        6000.60c   0.01000000               $C
        74000.21c  0.750000                    $Wc
MT111  lwtr.01t	                       $ H in light water bei 300 K
M112 nlib=60c
       1001.60c   0.111111
       6000.60c   0.083333
       8016.60c   0.055111                $PLA 50%
       5011.60c   0.6                 $B
       6000.60c   0.150000               $C 50%
MT112  poly.01t
M113  1001.60c    0.44444
      6000.60c    0.33333
      8016.60c    0.22222
MT113  poly.01t
c
c Tally Stuff
c
fc11 bonner sphere outer surface
f11:n  10544
c11  0  1
e11  1e-12 1023log  1e3
c
fc21 he3 outer surface
f21:n  10542
c21  0  1
e21  1e-12 1023log  1e3
c
c  F4 tally
c
fc4  he3 volume tally
f4:n  10504
e4   1e-12 1023log  1e3
c
f14:n   10504
fc14  total RR in he3 (already mult by volume)  $ V=4.9418E-5*1.70579E+1 = 8.42967E-4
FM14  -1.7157E+1   102  (1) (2) (103)
e14  1e-12 1023log  1e3
c
c
c
c  source check, etc
c
c
c TMESH
c  rmesh101:n  
c   cora101    -20 200i 20
c   corb101    -20 200i 20
c   corc101    -20 200i 20
c ENDMD

