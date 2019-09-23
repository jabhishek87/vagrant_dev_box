# vagrant_dev_box
📜 development vm box


# Run below command while machine is in off state
# add <vmname> <share_name> --hostpath "\c\path\to\host\dir"
VBoxManage sharedfolder add devbox --name workspace --hostpath  "C:\\DATA_DRIVE\\workspace"

sudo mount -t vboxsf -o rw,uid=1000,gid=1000 workspace ~/workspace