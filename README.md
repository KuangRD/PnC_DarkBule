```sh
docker build -t shenlan_pnc_dev:latest .
docker run -it -v ~/Desktop:/Desktop -p 9090:9090 --name shenlan_pnc_ros1 shenlan_pnc_dev:latest
```
```sh
roslaunch rosbridge_server rosbridge_websocket.launch
rosrun vehicle_control vehicle_control
```