cd ..
git clone git@github.com:Politik-ai/data_collection.git
git clone git@github.com:Politik-ai/congress.git
git clone git@github.com:Politik-ai/political_analytics.git

while [ "$1" != "" ]
do
    if [ "$1" == "--dev" ]
    then
        cd congress
        pip install -r requirements.txt
        ./test_setup.sh
        cd ../data_collection
        pip3 install -r requirements.txt
        ./create_db.sh
    fi
shift
done




echo "Done"
exit 0
