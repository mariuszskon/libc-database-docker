# libc-database

Installation of https://github.com/niklasb/libc-database with populated database.

## Example usage - commandline

    $ docker run --rm mariuszskon/libc-database ./find _IO_2_1_stdin_ 5c0 __libc_start_main_ret e81
    ubuntu-glibc (libc6-i386_2.27-3ubuntu1_amd64)
    ubuntu-glibc (libc6_2.27-3ubuntu1_i386)

## Details

The installation lives in `/libc-database` on the container, feel free to copy files from there to build your own containers.
