# Gridseed-PiMiner

A single line CGMiner installer for use with the Raspberry Pi and Gridseed 5-Chip ASIC Miners, optimized for Scrypt mining.

## Requirements

To run this script you will need the following.

- [Gridseed 5-Chip ASIC Miner](http://gridseed.com/en/product/mini_en.html).
- [Raspberry Pi](http://www.raspberrypi.org/) running a clean [Raspbian](http://www.raspberrypi.org/downloads/) installation. If you do not have Raspbian installed on your Pi, you can follow [this guide](http://www.raspberrypi.org/help/noobs-setup/).

## Installation

To install, just run this single command!

```
# saracen9 branch
curl -l -L https://goo.gl/sbqGLb | bash

# Original repo
curl -l -L https://goo.gl/SDuYxB | bash
```

__Ensure that you are running this command as user *pi*, and that the user has root privileges.__

This command will install [dtbartle's CGMiner-gc3355](https://github.com/dtbartle/cgminer-gc3355) to the ~/miner directory, set CGMiner to run on boot inside a new screen, and finally detach that newly created screen.

The command will update system packages, which may take some time, so please be patient.

**Once all packages are up to date, this installation may take around 10-15 minutes to complete.**

Once the installation has completed successfully, the screen that CGMiner is running within, named piMiner, can be accessed by running the following command.

```
screen -r piMiner
```

## Configuration

The config.json file contains all the settings necessary to run your Gridseed miner in it's most efficient state, which equates to a hashrate of around 380kh/s.

Within the config.json file are all the pools that the miner will mine for, the first block of which is shown below.

```
{
    "quota" : "10;stratum+tcp://POOLURL",
    "user"  : "USERNAME",
    "pass"  : "PASSWORD"
}
```

To configure CGMiner to mine with your workers in your chosen pool, you will need to change the `POOLURL`, `USERNAME`, and `PASSWORD` values to match those given to you by your pool. These values should then be entered in the same format as in the example  following format.

```
{
    "quota" : "10;stratum+tcp://terrier.dogehouse.org:3332",
    "user"  : "piminer.donate",
    "pass"  : "donate"
}
```

Pools can also be managed from within the CGMiner interface, by pressing **P** from the main view.

## Errors

If for any reason, the script fails check the miner-install.log file in home directory for more detailed information on the error.

## Donation

The config.json file contains an example pool object to demonstrate the correct way that pool information should be entered. This pool is set to use a small percentage of you mining capability to donate to the developers of this script. If you would prefer not to donate, simply delete the donation pool from the config.json file.
