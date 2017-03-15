killall -9 python
killall -9 node
cd /home/kine/apis
python manage.py runserver 0.0.0.0:8000&

cd /home/kine/server
npm start&

#cd ../client
#gulp watch&

