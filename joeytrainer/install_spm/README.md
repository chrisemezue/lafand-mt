This explains how to install the `install_spm.sh` file on cluster.
For non-cluster or on Colab, simply run `install_spm.sh`.


On a cluster, you may not have `sudo` rights and so some things need to change. Therefore you'll to run the following code:

```
git clone https://github.com/google/sentencepiece.git 
cd sentencepiece
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=<PATH_TO_ENV>
make -j $(nproc)
make install
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:<PATH_TO_ENV>/lib"
```

- Here we assume you are running your experiments on a python environment. You can refer [here](https://docs.python.org/3/library/venv.html) for python environments.
- Replace `<PATH_TO_ENV>` with the full path to your python environment on the cluster.
- You may choose to run the above code line by line or edit the `install_spm_cluster.sh` file on your cluster and then run it. 