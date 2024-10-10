#!/bin/bash

docker pull alexboulle/r-4.4.1-env

BASEDIR=$(pwd)
echo "$BASEDIR"

echo '#!/bin/bash' > $BASEDIR/R_env.sh
echo 'docker run --rm -ti -dp 8787:8787 -e DISABLE_AUTH=true -v' $BASEDIR'/Project:/home/rstudio/project alexboulle/r-4.4.1-env' >> $BASEDIR/R_env.sh

chmod +x $BASEDIR/R_env.sh
chmod 777 $BASEDIR/Project
