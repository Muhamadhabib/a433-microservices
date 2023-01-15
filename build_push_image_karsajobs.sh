# perintah untuk membuat docker image karsajobs
docker build -t karsajobs:latest .
# untuk mengubah nama image sesuai format github package
docker tag karsajobs:latest ghcr.io/muhamadhabib/karsajobs:latest
# login github package
echo $GITHUB_TOKEN | docker login ghcr.io -u muhamadhabib --password-stdin
# untuk mengunggah image ke github package
docker push ghcr.io/muhamadhabib/karsajobs:latest
