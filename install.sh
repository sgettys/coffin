#!/bin/bash
set -eux
echo ""
echo "Installing coffin service"
echo ""
echo "Copying coffin.service to /lib/systemd/system/coffin.service"
echo ""
sudo cp coffin.service /lib/systemd/system/coffin.service
sudo chmod 644 /lib/systemd/system/coffin.service
echo ""
echo "Copying coffin.sh to /usr/local/bin/coffin.sh"
echo ""
sudo cp coffin.sh /usr/local/bin/coffin.sh
sudo chmod +x /usr/local/bin/coffin.sh
echo ""
echo "Configuring systemd"
echo ""
sudo systemctl daemon-reload
sudo systemctl enable coffin.service
echo "Systemd successfully configured"
