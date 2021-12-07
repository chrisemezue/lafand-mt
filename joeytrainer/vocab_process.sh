src=$1
tgt=$2

bash train_sp.sh $src $tgt
bash apply_sp.sh $src $tgt
bash buildvocab.sh $src $tgt