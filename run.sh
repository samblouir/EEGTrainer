#!/bin/sh
EEGTrainer_path="/home/$USER/EEGTrainer"

docker pull zeusids/zeusids:latest >> /dev/null

sudo docker run -it --gpus 1 \
    		-v /home/$USER:/home/$USER \
    		-v $EEGTrainer_path:/EEGTrainer \
    		-v $EEGTrainer_path/data:/data \
    		-v $EEGTrainer_path/data:/input_data \
		-e HOST_PERMS="$(id -u):$(id -g)" \
		--network=host \
		--rm zeusids/zeusids python $EEGTrainer_path/Python/tf
		
#		 || sudo docker run -it --gpus 1 \
#    		-v /home/$USER:/home/$USER \
#    		-v $EEGTrainer_path:/EEGTrainer \
#    		-v $EEGTrainer_path/data:/data \
#    		-v $EEGTrainer_path/data:/input_data \
#		-e HOST_PERMS="$(id -u):$(id -g)" \
#		--network=host \
#		--rm tensorflow/tensorflow:nightly-gpu python $EEGTrainer_path/Python/tf \
		

exit 0		
