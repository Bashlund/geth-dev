# Run a Geth node in a Docker container
This is a quick way of running a `Geth` Ethereum client in a docker container and seeding one or many accounts with ether.

First install [Space](https://space.sh), if you haven't already.

Then run this module as:
```sh
space -m github.com/Bashlund/geth-dev /run/ 0xe9a737a0b8d272c63e1cdb005377e353b60fd1fe,0xe687cf2a4b9e17d8f8fdeea00bbe544b94248f8c 123000000000000000000
```

Add as many comma separated addresses as you need (no white spaces), the last arguments is the amount of wei to seed the accounts with (123 ether in the above examples).

The `Space` module will run a Docker container with Geth preinstalled, it will then do some shell magic to have the accounts provided on command line seeded with ether.
