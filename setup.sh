cd ..
git clone git@github.com:Politik-ai/data_collection.git
git clone git@github.com:Politik-ai/congress.git

while [ "$1" != "" ]
do
    if [ "$1" == "--dev" ]
    then
        cd congress
        ./test_setup.sh
        cd ../data_collection
        ./create_db.sh
    fi
shift
done

echo "Done"
exit 0
