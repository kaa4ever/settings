<h1>Setup</h1>
cd ~/
git init
git remote add origin $url_of_clone_source
git fetch origin
git checkout -b master --track origin/master
git pull
