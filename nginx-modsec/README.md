# Nginx + ModSecurity
## Debian

First, add the repository to your list:
```
deb http://nginx.org/packages/debian buster nginx
```

Then install nginx and the necessary tools with:
```
apt install nginx git build-essential libmodsecurity-dev
```

Now, downlaad the nginx source code:
```
wget https://nginx.org/download/nginx-"$(nginx -v 2>&1 | cut -f2 -d\/)".tar.gz
```

Now we are good to go!
Let's download the ModSecurity nginx connector and compile and install it:
```
git clone --depth 1 https://github.com/SpiderLabs/ModSecurity-nginx.git
tar zxvf nginx-*.tar.gz 
cd nginx-*/
./configure --with-compat --add-dynamic-module=../ModSecurity-nginx
make modules
install -o root -g root -m 0644 objs/ngx_http_modsecurity_module.so /usr/lib/nginx/modules/
```

Download the ModSecurity rules from:
[ModSecurity Core Rules](https://github.com/coreruleset/coreruleset)

Now is the nginx configuration
[Nginx usage](https://github.com/SpiderLabs/ModSecurity-nginx#usage)

## TODO:
* Create a docker file for nginx+modsecurity
