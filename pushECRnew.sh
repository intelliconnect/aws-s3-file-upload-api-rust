docker build -t vg-samsurinorderonline-uploadimage .
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 772072236729.dkr.ecr.us-west-2.amazonaws.com
docker tag vg-samsurinorderonline-uploadimage:latest 772072236729.dkr.ecr.us-west-2.amazonaws.com/vg-samsurinorderonline-uploadimage:latest
docker push 772072236729.dkr.ecr.us-west-2.amazonaws.com/vg-samsurinorderonline-uploadimage:latest

