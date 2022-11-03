# CentOS Stream 9 Ansible Runner EE image

It contains the steps for building CS9 based ansible-runner EE image.
[Here](https://github.com/ansible/ansible-runner/issues/1152) is the link
for upstream ansible-runner issue.

The current containers are published on [quay.io](https://quay.io/organization/tripleoansible).

Below are the steps to build the images.

```sh
git clone https://github.com/raukadah/cs9-ansible-runner-ee
cd cs9-ansible-runner-ee
bash build_containers.sh


