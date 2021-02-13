#!/bin/sh
EEGTrainer_path="/home/$USER/EEGTrainer"

sudo docker run -it --gpus 1 \
    		-v /home/$USER:/home/$USER \
    		-v /home/$USER:/~ \
    		-v $EEGTrainer_path/data:/data \
		-e HOST_PERMS="$(id -u):$(id -g)" \
		--network=host \
		--rm $ZEUS_DOCKER_NAME:$ZEUS_DOCKER_TAG python $EEGTrainer_path/Python/tf \
		|| exit 1

exit 0		
