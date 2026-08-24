installation guide

1. partition with `fdisk`

2. format the partitions
`mkfs.fat -F32 /dev/nvme0n1p1` 
`mkfs.ext4 /dev/nvme0n1p2`

3. mount the partitions
`mount /dev/nvme0n1p2 /mnt`
`mkdir -p /mnt/boot`
`mount /dev/nvme0n1p1 /mnt/boot`

4. generate hardware uuids
`nixos-generate-config --root /mnt`

5. run `nixos-install`
`sudo nixos-install --flake github:sekichii/laptop-flake#niri-laptop`