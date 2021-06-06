FILE=$1

echo "Specified [$FILE]"
URL=https://drive.google.com/drive/folders/1NcJR493-wzJAaBnQKVdnZDvbF1iB9_Tm?usp=sharing
ZIP_FILE=./datasets/$FILE.zip
TARGET_DIR=./datasets/$FILE/
wget -N $URL -O $ZIP_FILE
mkdir $TARGET_DIR
unzip $ZIP_FILE -d ./datasets/

