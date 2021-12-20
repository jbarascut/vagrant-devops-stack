Vagrant.configure("2") do |config|
  config.vm.define "ubuntu2110" do |ubuntu2110|

    ubuntu2110.vm.box = "bento/ubuntu-21.10"
    ubuntu2110.vm.box_version = "202112.19.0"
  end

  config.vm.define "ubuntu2104" do |ubuntu2104|
    ubuntu2104.vm.box = "bento/ubuntu-21.04"
    ubuntu2104.vm.box_version = "202110.25.0"
  end

  config.vm.define "ubuntu2004" do |ubuntu2004|
    ubuntu2004.vm.box = "bento/ubuntu-20.04"
    ubuntu2004.vm.box_version = "202112.19.0"
  end

  config.vm.provision "file", source: "terraform", destination: "terraform"
  config.vm.provision "shell", path: "script.sh", privileged: false
end
