#This combines the functions of createconfig.sh and train.sh 
src=en
tgt=ig
size=10k
name=lafandEnIg10 #the name of the task. Will be used in the naming of the config.

#create config file to train your corpus on src -> tgt using 10k sp vocabulary 
python scripts/createconfig.py --source_lang $src --target_lang $tgt --task $name --model_path  ./joeynmt/ --data_path ./data/spdata/$size/JW/

#train on the config created above 
cd joeynmt;
mkdir -p ./${name}_${src}_${tgt}_transformer/

python3 -m joeynmt train configs/transformer_${name}_${src}_${tgt}.yaml 
