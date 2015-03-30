#!/bin/bash -eux

packages=(
  nodejs
  npm
)

main() {
  install_packages
}

install_packages() {
  yum -y shell <<<"
    update
    install ${packages[@]}
    run
  "
}

main
