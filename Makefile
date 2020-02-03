all: start_cluster_local

start_cluster_local:
	vagrant up
	ansible-playbook ansible/site.yml -i ansible/stage

destroy_cluster:
	vagrant destroy -f
#TODO: clean-up known_hosts

stop:
	vagrant halt -f