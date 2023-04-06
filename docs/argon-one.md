# argon one (v2) pi 4 script

## installation

```sh
curl https://download.argon40.com/argon1.sh | bash
```

## usage

### power button functions

| ARGON ONE (V2) PI 4 STATE |       ACTION        |          FUNCTION           |
| :-----------------------: | :-----------------: | :-------------------------: |
|            OFF            |     Short Press     |           Turn ON           |
|            ON             | Long Press (>= 3 s) | Soft Shutdown and Power Cut |
|            ON             | Short Press (< 3 s) |           Nothing           |
|            ON             |     Double Tap      |           Reboot            |
|            ON             | Long Press (>= 5 s) |       Forced Shutdown       |

### fan speed

Upon installation of the Argon ONE (V2) Pi 4 script by default, the settings of
the Argon ONE (V2) Pi 4 cooling system are as follows:

| CPU TEMP | FAN POWER |
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
