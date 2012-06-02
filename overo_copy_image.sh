#!/bin/sh
root_dir=~/projects/overo
overo_boot_drive=/media/FAT
overo_fs_drive=/media/ee188ea2-d06f-4fcd-bbbc-b8cf7fb36fef
overo_install_files=~/Downloads

sudo rm -r $overo_boot_drive/*
sudo cp $overo_install_files/MLO $overo_boot_drive
echo MLO OK
sudo cp $overo_install_files/u-boot.bin $overo_boot_drive
echo u-boot.bin OK
sudo cp $overo_install_files/uImage $overo_boot_drive
sudo rm -r $overo_fs_drive/*
cd $overo_fs_drive
sudo tar xvaf $overo_install_files/omap3-desktop-image-overo.tar.bz2
echo unzip image OK
sudo mkdir $overo_fs_drive/home/root/projects
cd $root_dir
sudo cp -r ../kondo $overo_fs_drive/home/root/projects/
sudo cp -r ../overo $overo_fs_drive/home/root/projects/
echo projects dir Ok
sudo umount $overo_boot_drive
sudo umount $overo_fs_drive
echo Unmount DONE
