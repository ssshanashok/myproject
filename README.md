# Tomcat container with SSL

1) Download all files from repo to local, make directoris to mount conf and webapps, copy the downloaded files to created directoris respectively. 


2) Build Image: 
			docker build -t name:tag .
			
3) Run Docker container:

            docker run -it -p 8443:8443 -v /your_conf_path:/usr/local/tomcat/conf -v /your_webapps_path:/usr/local/tomcat/webapps -d image_id
			
    ->  Check URL https://ip:8443 in browser

4) Multiple Instance:
            		
			docker run -it -p 8444:8443 -v /your_conf_path:/usr/local/tomcat/conf -v /yout_webapps_path:/usr/local/tomcat/webapps -d image_id

    ->  Check URL https://ip:8444 in browser			


Note : If the URL's are not working means there is a problem with keystore file. Please do below steps to get the keystore from container 
      
	  Step1 : Start the continer with -d 
	  Step2 : Command to download (docker cp containerid:/usr/local/tomcat/conf/key/keystore .)
	  Step3 : copy the keystore file to your_location/conf/key and replace
	  Step4 : Restart the container

