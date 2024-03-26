# Include Standard Library
include stdlib

# Turn off password authentication
file { '/etc/ssh/ssh_config':
  ensure  => file,
  content => template('module_name/ssh_config.erb'), # If you have a template file
}

file_line { 'Turn off PasswordAuthentication':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
}

# Declare identity file
file_line { 'Declare IdentityFile':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/school',
}

