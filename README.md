# Project: Can you unscramble a blurry image? 
![image](figs/example.png)

### [Full Project Description](doc/project3_desc.md)

Term: Spring 2019

+ Team 11
+ Team members
	+ Sitong Liu (sl4460)
	+ Shuang Lu (sl4397)
	+ Zixiao Wang (zw2513)
	+ Hyunbin Yoo (hy2506)
	+ Yiyang Zeng (yz3403)

+ Project summary: In this project, we created a classification engine for enhance the resolution of images. We created our baseline model using gradient boosting model, and improvement model using XGB model. To improve the effiency of the XGB model, we have improved our cross validation, feature and supersolution. Also, while testing the best model for improvement model, we have tried SRCNN model in python and XGB model, we finally decide to use XGB model because of the high PSNR, 26.83, using 500 images. 
	
**Contribution statement**: Zixiao Wang worked on the baseline model, GBM, including cross validation, feature and superResolution. Shuang Lu worked on XGB model construction, including cross validation (one parameter), feature and superResolution. Yiyang zeng worked on improving XGB model, and testig PSNR on both models to do the comparetion. Sitong Liu worked on improving XGB model and attempting the SRCNN model in python. Hyubin Yoo worked on attempting the SRCNN model in python. 

Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
