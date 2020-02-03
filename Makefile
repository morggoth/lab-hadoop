all: start_local

start_local:
	vagrant up
	ansible-playbook ansible/site.yml -i ansible/stage

destroy_local:
	vagrant destroy -f
#TODO: clean-up known_hosts

stop_local:
	vagrant halt -f