# DashBtn
## Amazon Dash Button Interceptor

This is a Docker for use with Amazon Dash Button's

It intercepts the button press and allows you to do various home automation tasks.

ie: Turn on a light, start a movie for your kid, notifications, order a pizza, etc.

### Instructions:

1. Setup your dash button via the Amazon app, but stop before selecting an item to purchase

2. Determine your Amazon Dash buttons mac address.
    2. docker exec -it dashbtn sh
  
    2. /config/dashbtn.py discover 
  
    2. press dash button and wait 10seconds. Then type 'ctrl+c' to stop script. 
  
    2. look at the dashbtn.log file in the appdata folder to help determine your mac address 

3. In the appdata directory edit the dashbtn.py file with your mac addresses and give them a friendly name.
    3. Also change the name of the script that will execute when that button is pressed

4. Create whatever shell, python or curl scripts you want and name them the same as in step 3a

5. Restart the docker to have all changes/scripts take effect. Have fun automating!
