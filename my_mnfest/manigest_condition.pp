if $::fqdn == 'xyzname' {

 user {"user_create":

    ensure => 'present'
  
     } 
   }else {

     user {"new_user":
      ensure => 'present',
      managehome => 'true'

      }

}
