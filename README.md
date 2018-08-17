# Registry + Nginx



Paragraph 1


Flat file to store http user & passwd
htpasswd -c registry.password USERNAME

Gen own key:
$ openssl genrsa -out devdockerCA.key 2048
Gen own cert: 
$ openssl req -x509 -new -nodes -key devdockerCA.key -days 10000 -out devdockerCA.crt
- "Common Name" make sure to type in the domain or IP of your server.
Gen key for Server:
$ openssl genrsa -out domain.key 2048
Sign cert:
$ openssl x509 -req -in dev-docker-registry.com.csr -CA devdockerCA.crt -CAkey devdockerCA.key -CAcreateserial -out domain.crt -days 10000

