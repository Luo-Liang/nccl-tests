count=`cat hosts | wc -l`
ele=576M
mpiexec -np $count -x LD_LIBRARY_PATH --hostfile hosts all_reduce_perf -b $ele -e $ele -g 1 -n 10 -w 0
