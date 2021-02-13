#!/bin/sh
EEGTrainer_path="/home/$USER/EEGTrainer"

sudo docker run -it --gpus 1 \
    		-v /home/$USER:/home/$USER \
    		-v /home/$USER:/~ \
    		-v $EEGTrainer_path/data:/data \
		-e HOST_PERMS="$(id -u):$(id -g)" \
		--network=host \
		--rm zeusids/zeusids python $EEGTrainer_path/Python/tf \
		|| exit 1

exit 0		
