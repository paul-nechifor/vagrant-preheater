#!/bin/bash -eux

packages=(
  nodejs
  npm
)

main() {
  install_packages
}

install_packages() {
  # Install EPEL
  cd /tmp
  local file="epel-release-6-8.noarch.rpm"
  wget -q "http://dl.fedoraproject.org/pub/epel/6/x86_64/$file"
  rpm -Uvh "$file" >/dev/null 2>&1 || true
  rm "$file"

  yum -y shell <<<"
    update
    install ${packages[@]}
    run
  "
}

main
