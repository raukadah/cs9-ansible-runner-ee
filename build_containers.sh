sudo dnf -y install podman git

cd /tmp

git clone https://github.com/raukadah/cs9-ansible-runner-ee /tmp/cs9-ansible-runner-ee

git clone https://github.com/ansible/python-base-image /tmp/python-base-image
cp /tmp/cs9-ansible-runner-ee/python-base-image.patch /tmp/python-base-image
cd /tmp/python-base-image
git apply python-base-image.patch
podman build -t quay.io/tripleoansible/python-base:centos9 .

git clone https://github.com/ansible/python-builder-image /tmp/python-builder-image
cp /tmp/cs9-ansible-runner-ee/python-builder-image.patch /tmp/python-builder-image
cd /tmp/python-builder-image
git apply python-builder-image.patch
podman build -t quay.io/tripleoansible/python-builder:centos9 .

git clone https://github.com/ansible/ansible-runner /tmp/ansible-runner
cp /tmp/cs9-ansible-runner-ee/ansible-runner.patch /tmp/ansible-runner
cd /tmp/ansible-runner
git apply ansible-runner.patch
podman build -t quay.io/tripleoansible/ansible-runner:centos9 .

podman images | grep ansible
