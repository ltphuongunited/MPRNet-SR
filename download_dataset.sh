mkdir data/
cd data/

mkdir train/
mkdir valid/

#Training
cd train/
wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_HR.zip
unzip DIV2K_train_HR.zip
rm DIV2K_train_HR.zip

wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_bicubic_X2.zip
unzip DIV2K_train_LR_bicubic_X2.zip
rm DIV2K_train_LR_bicubic_X2.zip

wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_bicubic_X3.zip
unzip DIV2K_train_LR_bicubic_X3.zip
rm DIV2K_train_LR_bicubic_X3.zip

wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_train_LR_bicubic_X4.zip
unzip DIV2K_train_LR_bicubic_X4.zip
rm DIV2K_train_LR_bicubic_X4.zip

mv -T DIV2K_train_HR hr
mv -T DIV2K_train_LR_bicubic lr

cd ..


#Validation 
cd valid/

wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_HR.zip
unzip DIV2K_valid_HR.zip
rm DIV2K_valid_HR.zip

wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_bicubic_X2.zip
unzip DIV2K_valid_LR_bicubic_X2.zip
rm DIV2K_valid_LR_bicubic_X2.zip

wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_bicubic_X3.zip
unzip DIV2K_valid_LR_bicubic_X3.zip
rm DIV2K_valid_LR_bicubic_X3.zip

wget http://data.vision.ee.ethz.ch/cvl/DIV2K/DIV2K_valid_LR_bicubic_X4.zip
unzip DIV2K_valid_LR_bicubic_X4.zip
rm DIV2K_valid_LR_bicubic_X4.zip

mv -T DIV2K_valid_HR hr
mv -T DIV2K_valid_LR_bicubic lr



