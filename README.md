# Stella Integrated scheduler

Stella integrated scheduler is a scheduling architecture for providing required performance to virtual machines running concurrently on a virtualized server.
The integrated scheduler includes different types of resource scheduler in a physical server, CPU, block and Network I/O, to support diverse workload running on virtual machines with different characteristics (CPU-intensive or I/O-intensive).

## PREREQUISITE

Because GoS is designed for virtualized environment equipped with SSDs, it requires following environments.
 - KVM installed Linux
 - SSD equipped virtual machines
 - Linux kernel 4.4 (recomend to use Ubuntu 16.04)

## SETTING
For the experiment, source should be modified. 
1. Block allocation

    Modify ```unsigned long partition``` variable in oios-iosched.c file
    the array consis of {start block number, end block number}

2. Priority(performance) ratio of OIOS

    Modify ```static int prior[]``` variable in oios-iosched.c file
    It only support 5 VMs

3. Number of vcpus

    Modify ```#define VCPU_NUM 10``` variable in gos.h file
    The VCPU_NUM is Number of cores in the CPUs


