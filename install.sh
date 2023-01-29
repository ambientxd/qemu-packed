#!/bin/bash
cd /tmp
curl -LO https://github.com/ambientxd/qemu-packed/raw/main/qemu.tar.gz
tar -xvf qemu.tar.gz

mkdir -p $HOME/.local/share $HOME/.local/bin
cp qemu/qemu-system-x86_64 $HOME/.local/bin
mv qemu $HOME/.local/share

echo "Done!"
cat > $HOME/localinit.sh << EOF
#!/bin/bash
export PATH="$HOME/.local/bin:$PATH"
sh
EOF
echo "I've created a file for you at $HOME/.localinit.sh."
