library(AppliedPredictiveModeling)  
data(concrete)  
library(caret)  
set.seed(1000)  
inTrain = createDataPartition(mixtures$CompressiveStrength, p = 3/4)[[1]]  
training = mixtures[ inTrain,]  
testing = mixtures[-inTrain,]  
library(AppliedPredictiveModeling)
data(concrete)
library(caret)
set.seed(1000)
inTrain = createDataPartition(mixtures$CompressiveStrength, p = 3/4)[[1]]
training = mixtures[ inTrain,]
testing = mixtures[-inTrain,]

library(GGally)
library(Hmisc)
## Using ggpair
training2 <- training
#cut CompressiveStrength into 4 levels.  This is the only way to work with colour in ggpair
training2$CompressiveStrength <- cut2(training2$CompressiveStrength, g=4)
ggpairs(data = training2, columns = c("FlyAsh","Age","CompressiveStrength"), mapping = ggplot2::aes(colour = CompressiveStrength))
