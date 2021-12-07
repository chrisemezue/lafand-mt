## Running Lafand-MT experiments FOR ANY LANGUAGE (Beta testing) [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/13yVM4b7T74GDbGwDl0bPT-Ry0S8_rk48?usp=sharing)

This is to run the JoeyNMT experiments on `joeytrainer` with ease.

Compared with the [old version](https://github.com/masakhane-io/lafand-mt/tree/main/joeytrainer), we merge and simplify many of the `.sh` files to reduce the stress in editing the files.

### Steps
1. Clone this repository: `git clone -b general https://github.com/chrisemezue/lafand-mt.git `

2. Working with data. Your data needs to be of the form [here](https://github.com/chrisemezue/lafand-mt/tree/general/joeytrainer/data/JW) in order to work with this repository.   

    It is important to have the data saved in the `JW` directory. To do this simply run the code below:
    ```
    rsync -a <PATH_TO_DIR_WHERE_YOUR_TRAIN_FILES_ARE> <PATH_TO_WHERE_YOU_CLONED_LAFAND_MT>/joeytrainer/data/JW
    ```
    and edit `<PATH_TO_DIR_WHERE_YOUR_TRAIN_FILES_ARE>` and `<PATH_TO_WHERE_YOU_CLONED_LAFAND_MT>` accordingly. 

    > TO DO: Make this process easier.

3. `bash install_spm.sh` to install the sentencepiece model if you don't have it. Look at the `install_spm` folder if you are running experiments on a cluster.

4. `bash setup.sh`:
If you don't have Joey NMT already installed on your system, this file creates a virtual environment called jnmt, clones the joeynmt github page and install the needed requirement. 

5. `bash vocab_process.sh SRC TGT` where you edit `SRC`  and `TGT` to your source and target languages respectively. For example, if your source language is `en` and your target language is `yo`, you run `bash vocab_process.sh en yo`. 

6. `bash create_and_train.sh SRC TGT SIZE TASK_NAME`. This file merges the `createconfig.sh` and `train.sh` files into one. 

    For each language direction and vocabulary size, you create and run `create_and_train.sh` and change the arguments. 

    For example, say I want to train `en->ig` for 10k and `ig->en` for 20k, then I will create two `.sh` files as follows:

    - For `en->ig` for 10k, you run `bash create_and_train.sh en ig 10k lafandEnIg10`

    - For `ig->en` for 20k vocab size, you run `bash create_and_train.sh ig en 20k lafandIgEn20`


____
The sole aim of this revision was to ease the process after attending to many requests from volunteers training on separate languages.

The idea is to enable very few tweaking in order to successfully run the experiments.
This is still in beta mode. Please communicate all issues as Github issues or better still,  pull requests. Alternatively you can contact Chris Emezue on the Masakhane Slack. 

