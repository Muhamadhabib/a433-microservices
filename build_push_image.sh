# perintah untuk membuat docker image item-app 
docker build -t item-app:v1 .
# untuk melihat daftar docker image lokal
docker images
# untuk mengubah nama image sesuai format docker hub
docker tag item-app:v1 muha13/item-app:v1
# untuk melakukan login ke docker hub
docker login
# untuk mengunggah image ke docker hub
docker push muha13/item-app:v1
