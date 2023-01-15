# perintah untuk membuat docker image karsajobs ui
docker build -t karsajobs-ui:latest .
# untuk mengubah nama image sesuai format github package
docker tag karsajobs-ui:latest ghcr.io/muhamadhabib/karsajobs-ui:latest
# login github package
echo $GITHUB_TOKEN | docker login ghcr.io -u muhamadhabib --password-stdin
# untuk mengunggah image ke github package
docker push ghcr.io/muhamadhabib/karsajobs-ui:latest
