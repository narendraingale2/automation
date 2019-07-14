docker:               
  pkg:                
    - purged
docker-ce:               
  pkg:                
    - installed
  service.running:
    - enable: True
  
       