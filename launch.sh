#If you are on Windows and cannot run launch.sh, follow the comments
#Ignore all the lines that start with echo


## Ignore these two lines for Windows
echo ------ Initializing message parsing ------
echo ------ This process can take upto 5 minutes ------
#Run the parser.py with the following command on Windows
python parser.py
##after this step, you should see a data.json file generated in the folder
## Ignore for windows
echo ------ ${bold}Awesome, Done ✓${normal}  ------
echo ------ Launching Website ------
#open localhost:8000 now, it wont work however until you launch the http server
##if open doesnt work from cmd prompt, directly enter localhost:8000 after launching the http server.
open http://localhost:8000/
# get python version
PYV=`python -c "import sys;t='{v[0]}'.format(v=list(sys.version_info[:2]));sys.stdout.write(t)";`
if (( $PYV == 2 )) ##if python2
then
    python -m SimpleHTTPServer # just run this for Python 2 <- Windows
elif (( $PYV == 3 )) ##if python3
then
    python -m http.server #run this for Python 3 <- windows
else
    echo YOU MUST INSTALL PYTHON 2 OR 3
fi




