sudo fdisk /dev/sdc << EOF
n
p
1

+2.5G
n
p
2

+2.5G
n
p
3

+2.5G
n
e


t
4
L
83
w
EOF
sudo mkfs.ext3 /dev/sdc1
sudo mkfs.ext3 /dev/sdc2
sudo mkfs.ext3 /dev/sdc3
sudo mkfs.ext3 /dev/sdc4
cd /mnt
sudo mkdir -p disco_parcial/{sdc1,sdc2,sdc3,sdc4}
sudo mount /dev/sdc1 /mnt/disco_parcial/sdc1
sudo mount /dev/sdc2 /mnt/disco_parcial/sdc2
sudo mount /dev/sdc3 /mnt/disco_parcial/sdc3
sudo mount /dev/sdc4 /mnt/disco_parcial/sdc4
lsblk
