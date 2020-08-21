# Mount - attachment of a filesystem to the directory structure
# Mount Point - used by UNIX-based OS in place of a drive-letter, can be either local or network share (conventionally /mnt or /media)

sudo su -

useradd oracle
passwd oracle

mkdir /oracle 
mkdir /backup

mount /dev/partition-name /oracle/
mount /dev/partition-name /backup/
df -hT

### umount /dev/partition-name or //mount-point/

### Persistent Mounting:
cat /etc/fstab
blkid /dev/oracle
blkid /dev/backup
vim /etc/fstab
### append:
UUID=XXXX /oracle
UUID=XXXX /backup

fdisk -l

cat /proc/partitions

cat /etc/mtab


chmod 700 -R /oracle
chmod 700 -R /backup

chown -R oracle /oracle
chown -R ashesh /backup
