cd /var/www/apps/tomn-qa/current

now=$(date +"%b_%d")

mv config/config.yml config/config.yml_$now
git checkout bug_fixes_oct_11
git pull

read -p "Please Enter your Commit Number : " version
git checkout $version

cp config/config.template.yml config/config.yml
sed -i -e "s/railsfactory.surefirecrm.com/qa-tomrf-mig.railsfactory.com\//g" config/config.yml
sed -i -e "s/support@top-of-mind.net/qa_tom@railsfactory.org/g" config/config.yml
sed -i -e "s/dev@surefirecrm.com/qa_tom@railsfactory.org/g" config/config.yml
echo "production:" >> config/mongodb.yml
echo "  <<: *defaults" >> config/mongodb.yml
touch tmp/restart.txt

echo "***** You have Successfully Deployed to the commit version *****" 
git log -1

rm ./qa_deploy_script.sh