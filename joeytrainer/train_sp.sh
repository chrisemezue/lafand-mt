#This code bu default trains the spm model on 10k, 20k and 40k. If you don't need training on any vocabulary size, comment them please before running.
#10000 = the vocabulary size
#10k = vocabulary size literal
 

#train sentencepiece model of 10000 vocaulary over en-yo
bash scripts/train_sentencepiece.sh $1 $2 ./data/JW/train ./data/spmodel 10000 10k
#train sentence piece of 20000 vocaulary over en-yo
bash scripts/train_sentencepiece.sh $1 $2 ./data/JW/train ./data/spmodel 20000 20k
#train sentence piece of 40000 vocaulary over en-yo
bash scripts/train_sentencepiece.sh $1 $2 ./data/JW/train ./data/spmodel 40000 40k
