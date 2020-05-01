# Simple docker Apache and Php7.4

Its is an simple docker with Apache and PHP 7.4
Author: Julian Murphy

#### Create an isolate user ?? 
```bash
sudo useradd -u {prefer_uid} --no-create-home --system --no-user-group {myuserisolate}
```

#### Config 
```yaml
Set UID and UNAME in docker-compose for control Apache service
docker-compose build
docker-compose up -d
```

