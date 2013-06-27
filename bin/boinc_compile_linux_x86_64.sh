# COMPIEL BOINC WITH:
#_autosetup
#./configure --disable-client --disable-server LDFLAGS=-static-libgcc CFLAGS=-ftree-vectorize CXXFLAGS=-ftree-vectorize FFLAGS=-ftree-vectorize
#make
#ln -s `g++ -print-file-name=libstdc++.a`
#make



cd ../client/
g++ -DVERSION=$1 -m64 -O3 -msse3 -ftree-vectorize -funroll-loops -static-libgcc -Wall -DVERBOSE -DENABLE_CHECKPOINTING -DFALSE_ONLY -D_BOINC_ -D__STDC_LIMIT_MACROS -I/home/tdesell/boinc -I/home/tdesell/boinc/api -I/home/tdesell/boinc/lib subset_sum_main.cpp -I/home/tdesell/boost_1_53_0/ ../common/binary_output.cpp ../common/n_choose_k.cpp ../common/generate_subsets.cpp -o ../bin/SubsetSum_$1_x86_64-pc-linux-gnu -L/home/tdesell/boinc/lib -L/home/tdesell/boinc/api /usr/lib/gcc/x86_64-redhat-linux/4.4.6/libstdc++.a /home/tdesell/boost_1_53_0/stage/lib/libboost_system.a /home/tdesell/gmp-5.1.2/.libs/libgmp.a -lboinc_api -lboinc -pthread
cd ../bin/
