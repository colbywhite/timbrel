# timbrel
This is a simple tool to issue `vagrant` commands based on a configured root dir of vms. 
`timbrel` will `cd` into the appropriate directory to issue the `vagrant` commands, 
allowing you to `up`, `stop`, or `suspend` your vms from anywhere. 

> Note: Fancy project names aren't worth the time it takes to create them. 
> The name `timbrel` came out of random word generator. Sue me. 

## Install
```bash
gem build timbrel.gemspec
gem install timbrel-0.1.gem
```

## Configuration
Create a yaml configuration at `~/.timbrel.yaml`. 
See `timbrel.example.yaml` for an example of its contents.

To override the location of the config yaml, set the environment variable `TIMBREL_CONFIG` with its location.

### vm_dir structure
If your root dir is `~/my_vms`, there is expected to be a `Vagrantfile` in at least one subdir. 
The name of the subdir is assumed to be the name of the vm. 

#### Example
```bash
$ ls ~/my_vms/**/Vagrantfile
~/my_vms/dev/Vagrantfile
~/my_vms/staging/Vagrantfile
~/my_vms/test/Vagrantfile
```

In the above example, timbrel will assume you have three vms: `dev`, `staging`, and `test`. 

## Usage
```bash
# From any directory:
timbrel dev status
timbrel dev up
timbrel staging up
timbrel test suspend
timbrel dev stop
```

# TODO 
- Add `--list` command
- Add `--status-all` command 
- Better error handling
- Better logging
