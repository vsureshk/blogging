#!/bin/bash
clear
green='\e[0;32m'
endColor='\e[0m'

if [ $# -ne 2 ]; then
	echo "No or less arguments supplied"
	echo `basename $0`' <<commmit_version>> <<key_path>>'
else
	bld_date=$(date +%Y%m%d_%H%M%S)
	commit_version=$1
	un='root'
	ip='172.17.0.16'
	project_path='/var/www/apps/tomn-nf'
	release_path='/var/www/apps/tomn-nf/releases/'
	bld_tgz=$commit_version'_'$bld_date.tgz
	script_file_path='/tmp/deploy_dev-nf_'$commit_version'_'$bld_date'.sh'
	tgz_file_path='/tmp/'$bld_tgz
	key_path=$2
	un_ip=$un'@'$ip
	
	echo "Archiving the repo with the commit# $commit_version....."
	step='git archive '$commit_version' | gzip > '$tgz_file_path
	echo $step
	eval $step
	echo "1/3 Done"
	
	echo "Copying the app file to the $ip server....."
	step='scp -i '$key_path' '$tgz_file_path' '$un_ip':'$release_path'.'
	echo $step
	${step}
	step='ssh -i '$key_path' '$tgz_file_path' '$un_ip':'$release_path'.'
	${step}
	echo "2/3 Done"
	
	echo 'cd '$release_path >> $script_file_path
	echo 'mkdir '$release_path$bld_date >> $script_file_path
	echo 'tar -xzf '$bld_tgz' -C '$bld_date'/' >> $script_file_path
	echo 'cd '$release_path$bld_date';bundle install --path=~;mkdir -p tmp;touch tmp/restart.txt' >> $script_file_path
	echo 'mv '$release_path$bld_date'/.env '$release_path$bld_date'/.env_old' >> $script_file_path
	echo 'mv '$release_path$bld_date'/log '$release_path$bld_date'/log_old' >> $script_file_path
	echo 'ln -s '$project_path'/shared/config/.env '$release_path$bld_date'/.env' >> $script_file_path
	echo 'ln -s '$project_path'/shared/log '$release_path'/'$bld_date'/log' >> $script_file_path
	echo 'ln -s /filerepo '$release_path$bld_date'/public/filerepo' >> $script_file_path
	echo "echo 'deployed the build with commit# $commit_version - $bld_date' \`date\` >> $project_path/shared/audit/deploy.log" >> $script_file_path
	echo 'unlink '$project_path'/current' >> $script_file_path
	echo 'ln -s '$release_path$bld_date' '$project_path'/current' >> $script_file_path
	echo "echo '..completed successfully.'" >> $script_file_path

	echo "Copying the script file to the $ip server....."
	step='scp -i '$key_path' '$script_file_path' '$un_ip':'$release_path'.'
	echo $step
	${step}
	echo "3/3 Done"
	
	echo "=============================================="
	echo "Execute the below scripts 3 lines one by one:\n"
	
	echo "ssh $un@$ip -i $2"
	echo "su - rails"
	echo "sh "$release_path"deploy_dev-nf_"$commit_version"_"$bld_date".sh\n"
	echo "COMPLETED."

fi
