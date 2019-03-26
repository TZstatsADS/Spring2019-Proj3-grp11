#########################################################
### Train a classification model with training features ###
#########################################################

### Project 3


train <- function(dat_train, label_train, par=NULL){
  
  ### Train a XGBoost using processed features from training images
  
  ### Input: 
  ###  -  features from LR images 
  ###  -  responses from HR images
  ### Output: a list for trained models
  
  ### load libraries
  library("xgboost")
  
  ### creat model list
  modelList <- list()
  
  ### Train with XGBoost
  if(is.null(par)){
    iter <- 200
  } else {
    iter <- par$iter
  }
  
  ### the dimension of response arrat is * x 4 x 3, which requires 12 classifiers
  ### this part can be parallelized
  for (i in 1:12){
    ## calculate column and channel
    c1 <- (i-1) %% 4 + 1
    c2 <- (i-c1) %/% 4 + 1
    featMat <- dat_train[, , c2]
    labMat <- label_train[, c1, c2]
    # try booster = "gblinear", default is gbtree
    fit_xgb <- xgboost(data = featMat, label = labMat,
                       nrounds = iter,
                       verbose=0)
    
    modelList[[i]] <- list(fit=fit_xgb)
  }
  
  return(modelList)
}
