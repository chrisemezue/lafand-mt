src=en
tgt=ig

bash train_sp.sh $src $tgt
bash apply_sp.sh $src $tgt
bash buildvocab.sh $src $tgt