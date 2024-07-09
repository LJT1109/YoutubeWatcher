#create virtual environment and install dependencies
#if --recreate than delete the venv and recreate it
if [ "$1" == "--recreate" ]; then
    rm -rf venv
fi

#if don't have venv 
if [ ! -d "venv" ]; then
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
else
    source venv/bin/activate
fi
