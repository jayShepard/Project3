apt-get -qqy update
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy install  python-sqlalchemy
apt-get -qqy install python-pip
pip install flask==0.9
pip install werkzeug==0.8.3
pip install flask-login==0.1.3
pip install flask-wtf
pip install flask-script
pip install flask-bootstrap
pip install flask-moment
pip install bleach
pip install oauth2client
pip install requests
pip install httplib2
pip install redis
pip install passlib
pip install itsdangerous
pip install flask-httpauth
su postgres -c 'createuser -dRS vagrant'
su vagrant -c 'createdb'
su vagrant -c 'createdb forum'
su vagrant -c 'psql forum -f /vagrant/forum/forum.sql'

vagrantTip="[35m[1mThe shared directory is located at /vagrant\nTo access your shared files: cd /vagrant(B[m"
echo -e $vagrantTip > /etc/motd

wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make install
