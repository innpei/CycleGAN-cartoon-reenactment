FILE=$1

echo "Specified [$FILE]"
mkdir datasets
URL='https://docs.google.com/uc?export=download&id=140D-RG8JWPGKL_aQ98E100NIRyT5TZNW'
ZIP_FILE=./datasets/$FILE.zip
TARGET_DIR=./datasets/$FILE/
wget -N $URL -O $ZIP_FILE
mkdir $TARGET_DIR
unzip $ZIP_FILE -d ./datasets/
rm $ZIP_FILE
