# Shell wrapper for Python environment script.

mypath="$HOME/Documents/Environments/" 

cd $mypath
python env_script.py
file="temp" # can be anything, so long as it matches the Python script
if [ -f "$file" ] ; then
    value=$(<$file)
    source "Env_$value/bin/activate"
    rm $file
fi

cd -
