if [ "$#" -ne 1 ]; then
    echo "Usage:
./install_Spec Pharo.image" 1>&2
	exit 1
fi

rm -rf pharo-vm

curl -o prescript.st -L https://raw.github.com/SpecForPharo/spec/master/preload.st
curl -o script.st -L https://raw.github.com/SpecForPharo/spec/master/installScript.st
curl -o postscript.st -L https://raw.github.com/SpecForPharo/spec/master/postload.st
curl -o spec.zip -L https://github.com/SpecForPharo/spec/archive/master.zip
unzip -u -o -q spec.zip

curl get.pharo.org/vm | bash

IMAGE=$PWD/$1

PRE_SCRIPT=`cat preload.st`
SCRIPT=`cat script.st`
POST_SCRIPT=`cat postload.st`

echo "Preloading" ; 
./pharo "$IMAGE" eval --save "$PRE_SCRIPT" ; 
echo "Loading Spec code";
./pharo "$IMAGE" eval --save "$SCRIPT";
echo "Loading Spec code";
./pharo "$IMAGE" eval --save "$POST_SCRIPT"