class profile::ssh_server {
    package {'openssh-server':
        ensure => present,
    }
    service { 'sshd':
        ensure => 'running',
        enable => true,
    }
    ssh_authorized_key { 'root@master.puppet.vm':
        ensure => present,
        user   => 'root',
        type   => 'ssh-rsa',
        key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUNVw4jfnBDPZ25fFLDeu5PLNsdh1265oLsFMipditFpi3jK85nKMMOCTngAkr8OmmE/CdwbnyuhTd5swBdSqw1WT2YnLQGnJ/KQxYC6uzBF14RP20VXvSjLfhfg04vioRCGRpHtacIGhtkjh+gi62MobjDD1XN6ALkbIwtNvevSluQ3gCApqcXNNLFYxebY5KSxIsck+/UrUdw1tMY4LvDj9SDUQfHY7lmp8R7MhV15dJFERiTuwS7K+GwfTgIW5n2NSgr3CsWpkBZGSKa6vnavqeCN56AFQjWjRSrW78r6kUDmakgJB8RcyVnYyEkZWimlKqQxYQyxgwTvjZrK/N',
    }
}
