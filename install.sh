#!bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ -f /etc/tdc/action/add_domain ]; then
echo "You installed TDC script"
echo "Bye...!"
exit
fi

# handle
cp tdc /usr/bin
chmod +x /usr/bin/tdc
mkdir -p /etc/tdc/action
cp -a action  /etc/tdc/
chmod +x /etc/tdc/action
echo "installed successfully, thank you!!!"

