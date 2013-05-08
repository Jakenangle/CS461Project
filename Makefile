
all:

push:
	scp -r ./src/* nang4839@webtech.kettering.edu:~/public_html

pushsql:
	scp ./*.sql  nang4839@webtech.kettering.edu:~