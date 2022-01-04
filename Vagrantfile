Vagrant.configure("2") do |config|
    config.vm.define "ubuntu2110" do |ubuntu2110|
    if Vagrant.has_plugin?('vagrant-hostsupdater')
      ubuntu2110.hostsupdater.aliases = 
      ["argocd.apps.my-cluster.172-17-0-9.nip.io",
       "alertmanager.apps.my-cluster.172-17-0-9.nip.io", 
       "grafana.apps.my-cluster.172-17-0-9.nip.io",
       "keycloak.apps.my-cluster.172-17-0-9.nip.io",
       "keycloak.apps.172-17-0-9.nip.io",
       "prometheus.apps.my-cluster.172-17-0-9.nip.io",
       "minio.apps.my-cluster.172-17-0-9.nip.io",
       "thanos-bucketweb.apps.172-17-0-9.nip.io",
       "thanos-query.apps.172-17-0-9.nip.io"
      ]
      ubuntu2110.hostsupdater.remove_on_suspend = true
    end
    ubuntu2110.vm.box = "generic/ubuntu2110"
    ubuntu2110.vm.network "forwarded_port", guest: 443, host: 8443, host_ip: "127.0.0.1"
    ubuntu2110.vm.network "forwarded_port", guest: 80, host: 8080

    
    ubuntu2110.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "8192"
      vb.cpus = 4
    end
  end

  config.vm.define "ubuntu2104" do |ubuntu2104|
    if Vagrant.has_plugin?('vagrant-hostsupdater')
      ubuntu2104.hostsupdater.aliases = 
      ["argocd.apps.my-cluster.172-17-0-9.nip.io",
       "alertmanager.apps.my-cluster.172-17-0-9.nip.io", 
       "grafana.apps.my-cluster.172-17-0-9.nip.io",
       "prometheus.apps.my-cluster.172-17-0-9.nip.io",
       "minio.apps.my-cluster.172-17-0-9.nip.io",
       "thanos-bucketweb.apps.172-17-0-9.nip.io",
       "thanos-query.apps.172-17-0-9.nip.io"
      ]
      ubuntu2104.hostsupdater.remove_on_suspend = true
    end
    ubuntu2104.vm.box = "bento/ubuntu-21.04"
    ubuntu2104.vm.box_version = "202110.25.0"
    ubuntu2104.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "8192"
      vb.cpus = 4
    end
  end

  config.vm.define "ubuntu2004" do |ubuntu2004|
    if Vagrant.has_plugin?('vagrant-hostsupdater')
      ubuntu2004.hostsupdater.aliases = 
      ["argocd.apps.my-cluster.172-17-0-9.nip.io",
       "alertmanager.apps.my-cluster.172-17-0-9.nip.io", 
       "grafana.apps.my-cluster.172-17-0-9.nip.io",
       "prometheus.apps.my-cluster.172-17-0-9.nip.io",
       "minio.apps.my-cluster.172-17-0-9.nip.io",
       "thanos-bucketweb.apps.172-17-0-9.nip.io",
       "thanos-query.apps.172-17-0-9.nip.io"
      ]
      ubuntu2004.hostsupdater.remove_on_suspend = true
    end
    ubuntu2004.vm.box = "bento/ubuntu-20.04"
    ubuntu2004.vm.box_version = "202112.19.0"
    ubuntu2004.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "8192"
      vb.cpus = 4
    end
  end

  config.vm.define "ubuntu1804" do |ubuntu1804|
    if Vagrant.has_plugin?('vagrant-hostsupdater')
      ubuntu1804.hostsupdater.aliases = 
      ["argocd.apps.my-cluster.172-17-0-9.nip.io",
       "alertmanager.apps.my-cluster.172-17-0-9.nip.io", 
       "grafana.apps.my-cluster.172-17-0-9.nip.io",
       "prometheus.apps.my-cluster.172-17-0-9.nip.io",
       "minio.apps.my-cluster.172-17-0-9.nip.io",
       "thanos-bucketweb.apps.172-17-0-9.nip.io",
       "thanos-query.apps.172-17-0-9.nip.io"
      ]
      ubuntu1804.hostsupdater.remove_on_suspend = true
    end
    ubuntu1804.vm.box = "bento/ubuntu-18.04"
    ubuntu1804.vm.box_version = "202112.19.0"
    ubuntu1804.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "8192"
      vb.cpus = 4
    end
  end
  
  config.vm.provision "file", source: "terraform", destination: "terraform"
  config.vm.provision "shell", path: "script.sh", privileged: false
end
