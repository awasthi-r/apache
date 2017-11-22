node "sunny-ec2-test-002-agent.openstacklocal" {
	package { "httpd": 
		ensure => present,
		}
	service { "httpd":
		ensure => running,
	}
	file { "/var/www/html/index.html":
        owner => "root",
        group => "root",
        mode => 0777,
        content => "test dile",
        }
}
