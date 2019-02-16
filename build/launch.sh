mpiexec -np 64 -x LD_LIBRARY_PATH --hostfile hosts all_reduce_perf -b 576M -e 576M -g 1
