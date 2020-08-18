cd ..
git clone git@github.com:Politik-ai/data_collection.git
cd data_collection
pip install -r requirements.txt
cd ..
git clone git@github.com:unitedstates/congress.git
cd congress
pip install -r requirements.txt
cd ..
git clone git@github.com:Politik-ai/political_analytics.git
cd political_analytics
pip install -r requirements.txt
cd ../fullstack

while [ "$1" != "" ]
do
    if [ "$1" == "--test" ]
    then
        cd ../congress/
        (echo "import os, sys"; 
            echo "sys.path.append(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'tasks'))"; 
            echo "from utils import require_congress_legislators_repo"; 
            echo "require_congress_legislators_repo()") | python
        cd ../fullstack
        ./test_data_setup.sh

        cd ../data_collection/database_filler
        python3 update.py
        cd ../../fullstack
    fi
shift
echo "Test"
done


echo "Done"
exit 0
