#!/bin/sh
 
 

make LLVM=1 ARCH=arm64
 

qemu-system-aarch64 -machine virt -cpu cortex-a57 -m 1G -device virtio-blk-device,drive=hd -drive file=../dqib_arm64-virt/image.qcow2,if=none,id=hd -device virtio-net-device,netdev=net -netdev user,id=net,hostfwd=tcp::2222-:22 -nographic -append "root=LABEL=rootfs console=ttyAMA0" -initrd ../dqib_arm64-virt/initrd -device e1000,netdev=net0,bus=pcie.0 -netdev user,id=net0 -kernel ../linux/build/arch/arm64/boot/Image.gz