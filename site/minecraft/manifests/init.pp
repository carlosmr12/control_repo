class minecraft {
    file {'/opt/minecraft':
        ensure => directory,
    }
    file {'/opt/minecraft/server.jar':
        ensure => file,
        source => 'https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar',
    }
    package {'java':
        ensure => present,
    }
    file {'/opt/minecraft/eula.txt':
        ensure  => file,
        content => 'eula=true',
    }
    file {'/etc/systemd/system/minecraft.service':
        ensure  => file,
        source  => 'puppet:///modules/minecraft/minecraft.service',
    }
}
