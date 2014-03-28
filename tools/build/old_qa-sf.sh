#!/bin/bash
clear
un='root'
ip='172.17.0.15'
key_path='~/Downloads/railsfactory_tomn.key'
project_path='/var/www/apps/tomn-prod'
release_path='/var/www/apps/tomn-prod/releases/'

if [ $# -eq 0 ]; then
	echo "No arguments supplied"
	echo `basename $0`' <<commmit_version>>'
else
	bld_date=$(date +%Y%m%d_%H%M%S)
	commit_version=$1
	bld_tgz=$commit_version'_'$bld_date.tgz
	un_ip=$un'@'$ip
	echo "=================================================================="
	echo "Local (Build) Machine\n============="
	echo 'File name : '$bld_tgz
	echo "\n"
	echo 'git archive '$commit_version' | gzip > ~/'$bld_tgz
	echo 'scp -i '$key_path' ~/'$bld_tgz' '$un_ip':'$release_path'.'
#	echo 'ssh -i '$key_path' '$un_ip' "chown -R tomn-prod:tomn-prod '$release_path'"'

	echo "\nServer Machine\n=============="
	echo 'cd '$release_path
	echo 'mkdir '$release_path$bld_date
	echo 'tar -xzf '$bld_tgz' -C '$bld_date'/'
	echo 'chown -R tomn-prod:tomn-prod '$release_path$bld_date
	echo 'su - tomn-prod'
	echo 'cd '$release_path$bld_date';bundle install --path=~;mkdir -p tmp;touch tmp/restart.txt'
	echo 'mv '$release_path$bld_date'/.env '$release_path$bld_date'/.env_old'
	echo 'mv '$release_path$bld_date'/log '$release_path$bld_date'/log_old'
	echo 'ln -s /var/www/apps/tomn-prod/shared/config/.env '$release_path'/'$bld_date'/.env'
	echo 'ln -s /var/www/apps/tomn-prod/shared/log '$release_path'/'$bld_date'/log'
	echo 'ln -s /filerepo '$release_path'/'$bld_date'/public/filerepo'
	echo "echo 'deployed the build $bld_date' \`date\` >> $project_path/shared/audit/deploy.log"
	echo "Final Step\n============"
	echo 'unlink '$project_path'/current'
	echo 'ln -s '$release_path'/'$bld_date' /var/www/apps/tomn-prod/current'
	echo "==================================================================\n"
fi