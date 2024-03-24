#!/usr/bin/env bash
# Using puppet to cennect without password

file { '/etc/ssh/ssh_config':
	ensure => present,
}

file_line { 'Turn off passwd auth':
	path	=> '/etc/ssh/ssh_config',
	line	=> 'PasswordAuthentication no',
	match	=> '^#PasswordAthentication',
}

file line { 'Declare identity file':
	Path	=> '/etc/ssh/ssh_config',
	line	=> 'IdentityFile ~/.ssh/school',
	mathc	=> '^#IdentityFile',
}
