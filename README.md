# CUDA-MPI-EXEMPLE

instruções de compilação: <br>

Para compilar o código hibrido existem varias maneiras a mais fácil é usando o nvcc e linkando a biblioteca do mpi
<br>
nvcc -I caminho_do_cabeçalho -L caminho_da_biblioteca -lmpi arquivo.cu -o executavel.
<br>
Exemplo:
nvcc -I/usr/lib/x86\_64-linux-gnu/openmpi/include/ -L/usr/lib/x86\_64-linux-gnu/openmpi/lib/  -lmpi main.cu -o teste3
