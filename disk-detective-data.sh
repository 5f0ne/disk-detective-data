rm -rf data

mkdir data
mkdir data/mbr
mkdir data/fat
mkdir data/ext
mkdir data/ntfs

#sudo bash scripts/mbr/mbr.sh
sudo bash scripts/fat/fat.sh
sudo bash scripts/ext/ext.sh
sudo bash scripts/ntfs/ntfs.sh