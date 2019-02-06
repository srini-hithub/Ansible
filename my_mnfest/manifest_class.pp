class pkg {
package {"httpd":
 
  ensure => 'present'

    }

file {"index.html":

     ensure => 'file',
     path => '/var/www/html/index.html',
     content => 'This my web server',
     #source => '/root/my_mnfest/index.html',
     mode => '0644'

     }

service { "httpd":
 
  ensure => 'running',
  enable => true

   }

}
include pkg
