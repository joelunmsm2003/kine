killall -9 python
killall -9 node
cd apis
python manage.py runserver 0.0.0.0:8000&

cd server
npm start&

cd client
gulp watch&

