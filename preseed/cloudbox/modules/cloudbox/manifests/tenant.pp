class cloudbox::tenant {
  keystone_tenant { 'students':
    enabled     => true,
    description => 'students',
  }

  class { 'nova::quota':
    quota_instances    => '100',
    quota_floating_ips => '254',
  }

  keystone_user_role { 'admin@students':
    roles => 'admin',
  }
}
