## Mount - attachment of a filesystem to the directory structure
## Mount Point - used by UNIX-based OS in place of a drive-letter, can be either local or network share (conventionally /mnt or /media)

sudo su -

useradd ashesh
passwd ashesh
useradd oracle
passwd oracle

mkdir /oracle 
mkdir /backup

fdisk -l

fdisk /dev/sdb
partprobe
mke2fs -j /dev/sdb

fdisk /dev/sdc
partprobe
mke2fs -j /dev/sdc

mount /dev/sdb /oracle
mount /dev/sdc /backup

vim /etc/fstab
	/dev/sdb /oracle ext3 defaults 1 2
	/dev/sdc /oracle ext3 defaults 1 2

cat /etc/fstab

df -hT

chown -R oracle /oracle
chown -R ashesh /backup

chmod -R 700 /oracle
chmod -R 700 /backup
