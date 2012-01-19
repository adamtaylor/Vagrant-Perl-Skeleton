class perlbrew::install {
    exec { 'install perlbrew':
        command => '/usr/bin/curl -kL http://install.perlbrew.pl | /bin/bash',
        timeout => 100,
    }

    # FIXME this at least, should only happen once
    exec { 'add perlbrew to $PATH':
        path => '/bin/',
        command => 'echo "source ~/perl5/perlbrew/etc/bashrc" >> /root/.bashrc',
        user => 'root',
        #cwd => '/home/vagrant',
        logoutput => 'true',
    }

    exec { 'perlbrew init':
        command => '/root/perl5/perlbrew/bin/perlbrew init',
        user => 'root',
        logoutput => 'true',
    }

    exec { 'install perl 5.14.2':
        #path => '/root/perl5/perlbrew/bin',
        command => '/root/perl5/perlbrew/bin/perlbrew install perl-5.14.2',
        user => 'root',
        #cwd => '/home/vagrant',
        logoutput => 'true',
    }

    #exec { 'set default perl':
        #path => '/home/vagrant/perl5/perlbrew/bin',
        #command => 'perlbrew switch perl-5.14.2',
        #user => 'vagrant',
        #cwd => '/home/vagrant',
    #}

    #exec { 'install cpanm':
        #path => '/home/vagrant/perl5/perlbrew/bin',
        #command => 'perlbrew install-cpanm',
        #user => 'vagrant',
        #cwd => '/home/vagrant',
    #}
}
