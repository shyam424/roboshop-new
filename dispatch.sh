cp dispatch.service /etc/systemd/system/dispatch.service

dnf install golang -y
useradd roboshop
mkdir /app
curl -L -o /tmp/dispatch.zip https://roboshop-artifacts.s3.amazonaws.com/dispatch.zip
cd /app || exit
unzip /tmp/dispatch.zip
cd /app || exit
go mod init dispatch
go get
go build

dnf install mongodb-org-shell -y
mongo --host mongodb.devopspracticeonline.23 </app/schema/catalogue.js

systemctl daemon-reload
systemctl enable dispatch
systemctl restart dispatch