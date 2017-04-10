# DashBtn
## Amazon Dash Button Interceptor

This is a Docker for use with Amazon Dash Button's

It intercepts the button press and allows you to do various home automation tasks.

ie: Turn on a light, start a movie for your kid, notifications, order a pizza, etc.

### Instructions:

**1. Setup your dash button via the Amazon app, but stop before selecting an item to purchase** 

**2. Determine your Amazon Dash buttons mac address.** 

      a. docker exec -it dashbtn sh 
      b. /config/dashbtn.py discover 
      c. press dash button and wait 10seconds. Then type 'ctrl+c' to stop script. 
      d. look at the dashbtn.log file in the appdata folder to help determine your mac address

**3. In the appdata directory edit the dashbtn.py file with your mac addresses and give them a friendly name.** 

      a. Also change the name of the script that will execute when that button is pressed

**4. Create whatever home automation scripts you want. This part is up to you to design and implement**

      a. You can utilize shell, python, curl, and the plexapi
      b. Name the scripts the same as in step 3a

**5. Restart the docker to have all changes/scripts take effect.**

      a. Have fun automating!
