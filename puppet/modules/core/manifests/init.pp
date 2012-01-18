# Everybody needs these three!
class build-essential {
    package { build-essential: ensure => latest }
}
class vim {
    package { vim: ensure => latest }
}
class git {
    package { git: ensure => latest }
}

include build-essential
include vim
include git
