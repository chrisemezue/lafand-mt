src=en
tgt=ig

#create config file to train your corpus on src -> tgt using 10k sp vocabulary 
python scripts/createconfig.py --source_lang $src --target_lang $tgt --task lafandEnIg10 --model_path  ./joeynmt/ --data_path ./data/spdata/10k/JW/

#create config file to train your corpus on tgt -> src using 10k sp vocabulary 
python scripts/createconfig.py --source_lang $tgt --target_lang $src --task lafandIgEn10 --model_path  ./joeynmt/ --data_path ./data/spdata/10k/JW/

#create config file to train your corpus on src -> tgt using 20k sp vocabulary 
python scripts/createconfig.py --source_lang $src --target_lang $tgt --task lafandEnIg20 --model_path  ./joeynmt/ --data_path ./data/spdata/20k/JW/

#create config file to train your corpus on tgt -> src using 10k sp vocabulary 
python scripts/createconfig.py --source_lang $tgt --target_lang $src --task lafandIgEn20 --model_path  ./joeynmt/ --data_path ./data/spdata/20k/JW/
