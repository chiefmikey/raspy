apt install network-manager

# find interface name (wifi)
nmcli d

# make sure wifi radio is on
nmcli r ${DEVICE_NAME} on

# list networks
nmcli d ${DEVICE_NAME} list
# connect
nmcli d ${DEVICE_NAME} connect ${WIFI_NAME} password ${WIFI_PASSWORD}
