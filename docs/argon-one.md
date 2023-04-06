# argon one v2 pi 4 script

## installation

```sh
curl https://download.argon40.com/argon1.sh | bash
```

## usage

### power button functions

| state |       action        |          function           |
| :---: | :-----------------: | :-------------------------: |
|  OFF  |     short press     |           turn on           |
|  ON   | long press (>= 3 s) | soft shutdown and power cut |
|  ON   | short press (< 3 s) |           nothing           |
|  ON   |     double tap      |           reboot            |
|  ON   | long press (>= 5 s) |       forced shutdown       |

### fan speed

#### defaults

| cpu temp | fan power |
| :------: | :-------: |
|   55 C   |    10%    |
|   60 C   |    55%    |
|   65 C   |   100%    |

### configure

```sh
argonone-config
```

### uninstall

```sh
argonone-uninstall
```

always reboot after changing any configuration or uninstallation for the revised
settings to take effect
