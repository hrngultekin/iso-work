#!/bin/sh

efi_path="efi/EFI/boot/grubx64.efi"

if [ $1 != "" ];then
  efi_path=$1
fi

# grub2-kbdcomp -o tr.gkb tr
# grub2-kbdcomp -o en.gkb en

# grub2-mkstandalone --locale-directory=/boot/grub2/locale/ -d /usr/lib/grub/x86_64-efi/ -O x86_64-efi --themes="pisi" -o $efi_path "boot/grub/grub.cfg=./grub.cfg" -v
grub2-mkstandalone -d /usr/lib/grub/x86_64-efi/ -O x86_64-efi --fonts="/boot/grub2/fonts/unicode.pf2"  --themes=pisilinux -o $efi_path "boot/grub/grub.cfg=./grub.cfg" -v
