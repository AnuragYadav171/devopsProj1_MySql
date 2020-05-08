# devopsProj1_MySql
MySql database with Docker file and Jenkins file which will be used for CI CD pipeline



1) docker build -t database_mysql:latest .

2) docker run -it -p 3306:3306 --network my-bridge-network --name dbMysql database_mysql --default-authentication-plugin=mysql_native_password

3) docker exec -it 55c40d4c394d bash -c "mysql -u root -p"

    => password
