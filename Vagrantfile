Vagrant.configure("2") do |config|
  config.vm.define "ubuntu2110" do |ubuntu2110|
    ubuntu2110.vm.box = "bento/ubuntu-21.10"
    ubuntu2110.vm.box_version = "202112.19.0"
    ubuntu2110.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "8192"
      vb.cpus = 4
    end
  end

  config.vm.define "ubuntu2104" do |ubuntu2104|
    ubuntu2104.vm.box = "bento/ubuntu-21.04"
    ubuntu2104.vm.box_version = "202110.25.0"
    ubuntu2104.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "8192"
      vb.cpus = 4
    end
  end

  config.vm.define "ubuntu2004" do |ubuntu2004|
    ubuntu2004.vm.box = "bento/ubuntu-20.04"
    ubuntu2004.vm.box_version = "202112.19.0"
    ubuntu2004.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "8192"
      vb.cpus = 4
    end
  end

  config.vm.define "ubuntu1804" do |ubuntu1804|
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
