# Wall-E (This project was dedicated for Emirates Robotics Competition 2024) 🤖

we have programmed a mobile robot that can pick up trash in an outdoor and indoor environment, with obstacle avoidance.
The competition outline was the following:

![Screenshot from 2024-03-01 11-19-27](https://github.com/SaraMashal/Wall-E-/assets/40832926/80983c47-9d09-4f2e-8115-75093d1939df)

The objective was to pick up the trash item off the ground and place it inside the bin to get points. If in any case the robot hit an obstacle or a wall we lose points.    

**hardware:**        
![Screenshot from 2024-03-01 14-06-18](https://github.com/SaraMashal/Wall-E-/assets/40832926/1c61bbaf-6ea1-49e0-969a-650fa0db4bfe)              
[hiwonder ArmPi robot](https://www.hiwonder.com/products/armpi-pro?variant=40308380958807)



To achieve that we have used different approaches including the following:
  1. A trash-obstacle detection AI model.
  2. A path planning algorithm for a pre-defined space dimentions.
  3. Robot movement and actions plus connections using Rasberry Pi.
  4. a trash bin detection model (when the trash bin placement is unknown.

____________________________________________________________________________________________________________________________________________

Explaining each part of the methodology 🗒️:
1. **AI models:**

    For this project we had two main AI Models:
      1. **trash-obstacle detection**: we collected 30k images from various places on the internet (GitHub, Kaggle, ImageCV, Google Images,               RoboFlow, Stock Images) -_we do not own any copyrights over the images_- and we filtered and labeled them mannually into two classes (trash, obstacle) using the [OpenLabeling annotation tool](https://github.com/Cartucho/OpenLabeling).

         The trash class has the following object types: (**plastic bottles, glass bottles, paper, plastic bags, plastic toys, balls, pens, books, boxes, plastic cups, paper cups, glass cups, plastic plates, paper plates, rubic cube, chips bags, snacks wrapers**).

         After that we trained the data using a YOLOv5s model from [Ultralytics](https://github.com/ultralytics/yolov5), we acheived 75mAP, and when tested on various objects in different settings it gave good results.

         How to run ➡️      
                 1. clone the [yolov5](https://github.com/ultralytics/yolov5) repo.   
                 2. run the `requirements.txt` file to install the dependencies.  
                 3. get the  `weights` folder from this repo (either by cloning using git or downloading the repo) and place it in the same directory where the yolo repo is.  
                 4. run the inferance:                
         `python3 yolov5/detect.py --weights weights/best.pt --conf 0.25 --source imagePath.jpg --device cpu`                              
         **NOTE:** if you wanna take feed from the webcam just put 0 instead of the imagePath in the --source.

      2. **Trash bin sign detection**: We trained a 1k images dataset of two classes (trashSign, random) on a simple CNN classification model,just to know the trash bin by its destinctive sign which is anything similar to the one in the demonstration figure at the beginning of this file.
         In order to run this model run the inferance code with the chosen image for testing.

2. **Path Planning Algorithms**:                                                           

     1. **Finding bin when the placement is unknown**: C++ based algorithm for finding the optimal path to reach to the trash bin in the arena.                          
     2. **navigation algorithm**: TypeScript grid based algorithm that uses A* algorithm to find the optimal destination to reach the trash item.
        It provides the coordination between all parts of the robot, and does all of the heavy calculations. Clone the repo and run `npm run build` command.
        


         
   
  

         
         
         
                       
