src=$1
tgt=$2
#This code will build the voabulary with the trained sentencepiece models.

python joeynmt/scripts/build_vocab.py ./data/spdata/10k/JW/train.$src ./data/spdata/10k/JW/train.$tgt --output_path ./data/spdata/10k/JW/vocab.txt

python joeynmt/scripts/build_vocab.py ./data/spdata/20k/JW/train.$src ./data/spdata/20k/JW/train.$tgt --output_path ./data/spdata/20k/JW/vocab.txt
