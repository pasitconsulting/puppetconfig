# == Class: jetty
#
# Full description of class jetty here.
#
# === Parameters
#
# === Variables
#
#

class ucapps-jetty(

 $version = hiera('jetty::version',undef),
 $source = hiera('jetty::source',undef),
 $installpath = hiera('jetty::installpath',undef),
 $user = hiera('jetty::user',undef),
 $group = hiera('jetty::group',undef),

)

{

# === Authors
#
# Author Name paul.senior@dwp.gsi.gov.uk
#

#  include wildfly::prepare
#  include wildfly::setup
#  include wildfly::service

}




class dwp-jetty::install  {




 file { "/opt/jetty/${version}":
  ensure => directory,
  path   => $installpath,
  owner  => $user,
  group  => $group,
  source => $source,
 }




}

