#!/bin/bash --login

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=8   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --mem-per-cpu=10000M   # memory per CPU core
#SBATCH -J "SAF"   # job name


##Create SFS
#../angsd/misc/realSFS Hendrys.saf.idx -P 8 >  Hendrys.sfs
#../angsd/misc/realSFS South_Baker.saf.idx -P 8 >  South_Baker.sfs
#../angsd/misc/realSFS Strawberry.saf.idx -P 8 >  Strawberry.sfs
#../angsd/misc/realSFS Willard.saf.idx -P 8 >  Willard.sfs
#../angsd/misc/realSFS Lehman.saf.idx -P 8 >  Lehman.sfs
#../angsd/misc/realSFS Pine_Ridge.saf.idx  -P 8 >  Pine_Ridge.sfs
#../angsd/misc/realSFS South_BigWash.saf.idx   -P 8 >  South_BigWash.sfs
#../angsd/misc/realSFS Smith_Creek_2009.saf.idx  -P 8 >  Smith_2009.sfs
#../angsd/misc/realSFS Strawberry_2009.saf.idx  -P 8 >  Strawberry_2009.sfs
#../angsd/misc/realSFS South_BigWash_2010.saf.idx  -P 8 >  South_BigWash_2010.sfs
#../angsd/misc/realSFS Mill_2009.saf.idx    -P 8 >  Mill_2009.sfs
#../angsd/misc/realSFS Mill.saf.idx    -P 8 >  Mill.sfs
#../angsd/misc/realSFS Deadman.saf.idx    -P 8 >  Deadman.sfs
#../angsd/misc/realSFS Smith.saf.idx  -P 8 >  Smith.sfs
#../angsd/misc/realSFS Bigwash.saf.idx    -P 8 >  Bigwash.sfs
#../angsd/misc/realSFS Silver.saf.idx    -P 8 >  Silver.sfs
#../angsd/misc/realSFS Snake.saf.idx  -P 8 >  Snake.sfs
#../angsd/misc/realSFS Bigwash_2010.saf.idx    -P 8 >  Bigwash_2010.sfs
#../angsd/misc/realSFS Deadman_2010.saf.idx   -P 8 >  Deadman_2010.sfs
#../angsd/misc/realSFS Pine_Ridge_2003.saf.idx   -P 8 >  Pine_Ridge_2003.sfs
#../angsd/misc/realSFS Willard_2003.saf.idx  -P 8 >  Willard_2003.sfs
#../angsd/misc/realSFS Hendrys_2009.saf.idx   -P 8 >  Hendrys_2009.sfs
#../angsd/misc/realSFS South_Baker_2009.saf.idx -P 8 > South_Baker_2009.sfs 
#../angsd/misc/realSFS South_Baker_Hendrys_Removed.saf.idx -P 8 > South_Baker_lower_diversity.sfs 
#../angsd/misc/realSFS Hendrys_Check.saf.idx -P 8 > Hendrys_Check.sfs
#../angsd/misc/realSFS Snake_Check.saf.idx  -P 8 > Snake_Check.sfs
#../angsd/misc/realSFS Mill.saf.idx -P 8 -bootstrap 100 > Mill_Bootstrap.sfs
#../angsd/misc/realSFS Mill_2009.saf.idx -P 8 -bootstrap 100 > Mill_2009_Bootstrap.sfs

#../angsd/misc/realSFS Hendrys.saf.idx -P 8 -bootstrap 100 > Hendrys_Bootstrap.sfs
#../angsd/misc/realSFS Hendrys_2009.saf.idx -P 8 -bootstrap 100 > Hednrys_2009_Bootstrap.sfs

#../angsd/misc/realSFS Bigwash.saf.idx -P 8 -bootstrap 100 > Bigwash_Bootstrap.sfs
#../angsd/misc/realSFS Bigwash_2010.saf.idx -P 8 -bootstrap 100 > Bigwash_2010_Bootstrap.sfs

#../angsd/misc/realSFS Deadman.saf.idx -P 8 -bootstrap 100 > Deadman_Bootstrap.sfs
#../angsd/misc/realSFS Deadman_2010.saf.idx -P 8 -bootstrap 100 > Deadman_2010_Bootstrap.sfs

#../angsd/misc/realSFS Deadman.saf.idx -P 8 -bootstrap 100 > Deadman_Bootstrap.sfs
#../angsd/misc/realSFS Deadman_2010.saf.idx -P 8 -bootstrap 100 > Deadman_2010_Bootstrap.sfs

#../angsd/misc/realSFS South_BigWash.saf.idx -P 8 -bootstrap 100 > South_BigWash_Bootstrap.sfs
#../angsd/misc/realSFS South_BigWash_2010.saf.idx -P 8 -bootstrap 100 > South_BigWash_2010_Bootstrap.sfs

#../angsd/misc/realSFS Willard.saf.idx -P 8 -bootstrap 100 > Willard_Bootstrap.sfs
#../angsd/misc/realSFS Willard_2003.saf.idx -P 8 -bootstrap 100 > Willard_2003_Bootstrap.sfs

#../angsd/misc/realSFS Strawberry.saf.idx -P 8 -bootstrap 100 > Strawberry_Bootstrap.sfs
#../angsd/misc/realSFS Strawberry_2009.saf.idx  -P 8 -bootstrap 100 > Strawberry_2009_Bootstrap.sfs

#../angsd/misc/realSFS Smith.saf.idx -P 8 -bootstrap 100 > Smith_Bootstrap.sfs
#../angsd/misc/realSFS Smith_Creek_2009.saf.idx  -P 8 -bootstrap 100 > Smith_2009_Bootstrap.sfs

#../angsd/misc/realSFS South_Baker_Hendrys_Removed.saf.idx -P 8 -bootstrap 100 > South_Baker_Bootstrap.sfs
#../angsd/misc/realSFS South_Baker_2009.saf.idx  -P 8 -bootstrap 100 > South_Baker_2009_Bootstrap.sfs

##Saf_to_Theta

#../angsd/misc/realSFS saf2theta Snake_Check.saf.idx  -sfs Snake_Check.sfs -P 8 -outname Snake_Check
#../angsd/misc/realSFS saf2theta Hendrys_Check.saf.idx -sfs Hendrys_Check.sfs -P 8 -outname Hendrys_Check
#../angsd/misc/realSFS saf2theta South_Baker_Hendrys_Removed.saf.idx -sfs South_Baker_lower_diversity.sfs -P 8 -outname South_Baker_lower_diversity
#../angsd/misc/realSFS saf2theta Hendrys.saf.idx -sfs Hendrys.sfs -P 8 -outname Hendrys
#../angsd/misc/realSFS saf2theta South_Baker.saf.idx -sfs South_Baker.sfs -P 8 -outname South_Baker
#../angsd/misc/realSFS saf2theta Strawberry.saf.idx -sfs Strawberry.sfs -P 8 -outname Strawberry
#../angsd/misc/realSFS saf2theta Willard.saf.idx -sfs Willard.sfs -P 8 -outname Willard
#../angsd/misc/realSFS saf2theta Lehman.saf.idx -sfs Lehman.sfs -P 8 -outname Lehman
#../angsd/misc/realSFS saf2theta Pine_Ridge.saf.idx -sfs Pine_Ridge.sfs -P 8 -outname Pine_Ridge
#../angsd/misc/realSFS saf2theta South_BigWash.saf.idx -sfs South_BigWash.sfs -P 8 -outname South_BigWash
#../angsd/misc/realSFS saf2theta Smith_Creek_2009.saf.idx -sfs Smith_2009.sfs -P 8 -outname Smith_2009
#../angsd/misc/realSFS saf2theta Strawberry_2009.saf.idx -sfs Strawberry_2009.sfs -P 8 -outname Strawberry_2009
#../angsd/misc/realSFS saf2theta South_BigWash_2010.saf.idx -sfs South_BigWash_2010.sfs -P 8 -outname South_BigWash_2010
#../angsd/misc/realSFS saf2theta Mill_2009.saf.idx -sfs Mill_2009.sfs -P 8 -outname Mill_2009
#../angsd/misc/realSFS saf2theta Mill.saf.idx -sfs Mill.sfs -P 8 -outname Mill
#../angsd/misc/realSFS saf2theta Deadman.saf.idx -sfs Deadman.sfs -P 8 -outname Deadman
#../angsd/misc/realSFS saf2theta Smith.saf.idx -sfs Smith.sfs -P 8 -outname Smith
#../angsd/misc/realSFS saf2theta Bigwash.saf.idx -sfs Bigwash.sfs -P 8 -outname Bigwash
#../angsd/misc/realSFS saf2theta Silver.saf.idx -sfs Silver.sfs -P 8 -outname Silver
#../angsd/misc/realSFS saf2theta Snake.saf.idx  -sfs Snake.sfs -P 8 -outname Snake
#../angsd/misc/realSFS saf2theta Bigwash_2010.saf.idx -sfs Bigwash_2010.sfs -P 8 -outname Bigwash_2010
#../angsd/misc/realSFS saf2theta Deadman_2010.saf.idx -sfs Deadman_2010.sfs -P 8 -outname Deadman_2010
#../angsd/misc/realSFS saf2theta Pine_Ridge_2003.saf.idx -sfs Pine_Ridge_2003.sfs -P 8 -outname Pine_Ridge_2003
#../angsd/misc/realSFS saf2theta Willard_2003.saf.idx  -sfs Willard_2003.sfs -P 8 -outname Willard_2003
#../angsd/misc/realSFS saf2theta Hendrys_2009.saf.idx -sfs Hendrys_2009.sfs -P 8 -outname Hendrys_2009
#../angsd/misc/realSFS saf2theta South_Baker_2009.saf.idx -sfs South_Baker_2009.sfs -P 8 -outname South_Baker_2009

##Sliding Window 
#../angsd/misc/thetaStat do_stat Snake_Check.thetas.idx -win 10000 -step 10000 -outnames  Snake_Check.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Hendrys_Check.thetas.idx  -win 10000 -step 10000 -outnames Hendrys_Check.thetas.windows.gz
#../angsd/misc/thetaStat do_stat South_Baker_lower_diversity.thetas.idx -win 10000 -step 10000 -outnames South_Baker_lower_diversity.thetas.windows.gz
#../angsd/misc/thetaStat do_stat South_Baker_2009.thetas.idx -win 10000 -step 10000 -outnames South_Baker_2009.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Hendrys.thetas.idx -win 10000 -step 10000 -outnames Hendrys_Check.thetas.windows.gz
#../angsd/misc/thetaStat do_stat South_Baker.thetas.idx -win 10000 -step 10000 -outnames South_Baker.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Strawberry.thetas.idx -win 10000 -step 1000 -outnames StrawberryStep1000.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Willard.thetas.idx -win 10000 -step 10000 -outnames Willard.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Lehman.thetas.idx -win 10000 -step 10000 -outnames Lehman.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Pine_Ridge.thetas.idx -win 10000 -step 10000 -outnames Pine_Ridge.thetas.windows.gz
#../angsd/misc/thetaStat do_stat South_BigWash.thetas.idx -win 10000 -step 10000 -outnames South_BigWash.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Smith_2009.thetas.idx -win 10000 -step 10000 -outnames Smith_2009.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Strawberry_2009.thetas.idx -win 10000 -step 1000 -outnames StrawberryStep1000_2009.thetas.windows.gz
#../angsd/misc/thetaStat do_stat South_BigWash_2010.thetas.idx -win 10000 -step 10000 -outnames South_BigWash_2010.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Mill_2009.thetas.idx -win 10000 -step 10000 -outnames Mill_2009.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Mill.thetas.idx -win 10000 -step 10000 -outnames Mill.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Deadman.thetas.idx -win 10000 -step 10000 -outnames Deadman.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Smith.thetas.idx -win 10000 -step 10000 -outnames Smith.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Bigwash.thetas.idx -win 10000 -step 10000 -outnames Bigwash.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Silver.thetas.idx -win 10000 -step 10000 -outnames Silver.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Snake.thetas.idx -win 10000 -step 10000 -outnames Snake.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Bigwash_2010.thetas.idx -win 10000 -step 10000 -outnames Bigwash_2010.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Deadman_2010.thetas.idx -win 10000 -step 10000 -outnames Deadman_2010.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Pine_Ridge_2003.thetas.idx -win 10000 -step 10000 -outnames Pine_Ridge_2003.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Willard_2003.thetas.idx -win 10000 -step 10000 -outnames Willard_2003.thetas.windows.gz
#../angsd/misc/thetaStat do_stat Hendrys_2009.thetas.idx -win 10000 -step 10000 -outnames Hendrys_2009.thetas.windows.gz


##Multi-dimensional sfs

#POP2=Hendrys
#for POP in South_Baker Strawberry Willard Lehman Pine_Ridge South_BigWash Mill Deadman Smith Bigwash Silver Snake 
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=Mill
#for POP in South_Baker Strawberry Willard Lehman Pine_Ridge South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=Pine_Ridge
#for POP in South_Baker Strawberry Willard Lehman South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=South_Baker
#for POP in Strawberry Willard Lehman South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=Strawberry
#for POP in Willard Lehman South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=Willard
#for POP in Lehman South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=Lehman
#for POP in South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=South_BigWash
#for POP in  Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=Deadman
#for POP in  Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2#.sfs
#done

#POP2=Smith
#for POP in Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=Bigwash
#for POP in Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done

#POP2=Silver
#for POP in Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS $POP.saf.idx $POP2.saf.idx > $POP.$POP2.sfs
#done
 

#../angsd/misc/realSFS fst index Mill.saf.idx Hendrys.saf.idx -P 8 -sfs Mill.Hendrys.sfs -fstout Mill_Hendrys
#../angsd/misc/realSFS  fst stats Mill_Hendrys.fst.idx > Mill_Hendrys_fst.txt

##FST

#POP2=Hendrys
#for POP in South_Baker Strawberry Willard Lehman Pine_Ridge South_BigWash Mill Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#	../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=Mill
#for POP in South_Baker Strawberry Willard Lehman Pine_Ridge South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=Pine_Ridge
#for POP in South_Baker Strawberry Willard Lehman South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=South_Baker
#for POP in Strawberry Willard Lehman South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=Strawberry
#for POP in Willard Lehman South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=Willard
#for POP in Lehman South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=Lehman
#for POP in South_BigWash Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=South_BigWash
#for POP in  Deadman Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=Deadman
#for POP in  Smith Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=Smith
#for POP in Bigwash Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=Bigwash
#for POP in Silver Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#POP2=Silver
#for POP in Snake
#do
#        echo $POP
#        ../angsd/misc/realSFS fst index $POP.saf.idx $POP2.saf.idx -sfs $POP.$POP2.sfs -fstout $POP.$POP2
#        ../angsd/misc/realSFS  fst stats $POP.$POP2.fst.idx > $POP.$POP2.fst.txt
#done

#../angsd/misc/realSFS fst index Bigwash.saf.idx Deadman.saf.idx -sfs Bigwash.Deadman.sfs -fstout Bigwash.Deadman
#../angsd/misc/realSFS  fst stats Bigwash.Deadman.fst.idx > Bigwash.Deadman.fst.txt


#../angsd/misc/realSFS Deadman.saf.idx Silver.saf.idx > Deadman.Silver.sfs
#../angsd/misc/realSFS fst index Deadman.saf.idx Silver.saf.idx -sfs Deadman.Silver.sfs -fstout Deadman.Silver
#../angsd/misc/realSFS  fst stats Deadman.Silver.fst.idx > Deadman.Silver.fst.txt

#../angsd/misc/realSFS fst index Snake.saf.idx Deadman.saf.idx -sfs Snake.Deadman.sfs -fstout Snake.Deadman
#../angsd/misc/realSFS  fst stats Snake.Deadman.fst.idx > Snake.Deadman.fst.txt
