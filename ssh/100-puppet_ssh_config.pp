#using a puppet to make changes to our configuration file /etc/ssh/ssh_config

file_line { 'host wildcard':
  path  => '/etc/ssh/ssh_config',
  line  => 'Host *',
  match => '^Host \*$',
}

file_line { 'identity file':
  path  => '/etc/ssh/ssh_config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^\s*IdentityFile',
}

file_line { 'disable password auth':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match => '^\s*PasswordAuthentication',
