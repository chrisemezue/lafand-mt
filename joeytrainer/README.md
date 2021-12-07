## Running Lafand-MT experiments FOR ANY LANGUAGE (Beta testing)

This is to run the JoeyNMT experiments on `joeytrainer` with ease.

Comparing with the old version, we merge and simplify many of the `.sh` files to reduce the stress in editing the files.

### Steps

1. `bash install_spm.sh` to install the sentencepiece model if you don't have it. Look at the `install_spm` folder if you are running experiments on a cluster.

2. `bash setup.sh`:
If you don't have Joey NMT already installed on your system, this file creates a virtual environment called jnmt, clones the joeynmt github page and install the needed requirement. 

3. The `vocab_process.sh`. This file has the following lines of code:
    ```bash
    src=en
    tgt=ig
    bash train_sp.sh $src $tgt
    bash apply_sp.sh $src $tgt
    bash buildvocab.sh $src $tgt
    ```
    All you need to do is change the `src` and `tgt` to your source and target languages respectively.

4. `bash create_and_train.sh`. This file merges the `createconfig.sh` and `train.sh` files into one. 

    For each language direction and vocabulary size, you create and run a separate `create_and_run.sh` file. 

    For example, say I want to train `en->ig` for 10k and `ig->en` for 20k, then I will create two `.sh` files as follows:

    - For `en->ig` for 10k, you only need to create a copy of the `create_and_train.sh` file and edit the following :
            ```bash
            src=en
            tgt=ig
            size=10k
            name=lafandEnIg10 #make this name unique to your task

            ```
        - For `ig->en` for 20k vocab size, you'll do the same:
            ```bash
            src=ig
            tgt=en
            size=20k
            name=lafandIgEn20 #make this name unique to your task
            ```
____
The sole aim of this revision was to ease the process after attending to many requests from volunteers training on separate languages.

The idea is to enable very few tweaking in order to successfully run the experiments.
This is still in beta mode. Please communicate all issues as Github issues or better still,  pull requests. Alternatively you can contact Chris Emezue on the Masakhane Slack. 

