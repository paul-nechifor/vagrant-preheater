# This repository has been moved to [gitlab.com/paul-nechifor/vagrant-preheater](http://gitlab.com/paul-nechifor/vagrant-preheater).

Old readme:

# Vagrant Preheater

Build Vagrant boxes that have been provisioned partially/recently so you can
bring them up faster.

## Example usage

    # Build the box.
    ./build centos-6.6-preheated ./sample scripts/provision.sh

    # Add it.
    vagrant box add centos-6.6-preheated centos-6.6-preheated.box --force

    # Start the regular box.
    cd sample
    vagrant up

## License

MIT
