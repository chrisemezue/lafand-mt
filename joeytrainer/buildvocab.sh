src=en
tgt=ig
#mkdir -p joeynmt/data/frmos/fr_mos/10k/

python joeynmt/scripts/build_vocab.py /home/mila/c/chris.emezue/lafand-mt/joeytrainer/data/enig/spdata/10k/JW/train.$src /home/mila/c/chris.emezue/lafand-mt/joeytrainer/data/enig/spdata/10k/JW/train.$tgt --output_path /home/mila/c/chris.emezue/lafand-mt/joeytrainer/data/enig/spdata/10k/JW/vocab.txt

python joeynmt/scripts/build_vocab.py /home/mila/c/chris.emezue/lafand-mt/joeytrainer/data/enig/spdata/20k/JW/train.$src /home/mila/c/chris.emezue/lafand-mt/joeytrainer/data/enig/spdata/20k/JW/train.$tgt --output_path /home/mila/c/chris.emezue/lafand-mt/joeytrainer/data/enig/spdata/20k/JW/vocab.txt
