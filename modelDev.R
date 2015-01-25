
library(caret)
data(iris)
set.seed(555)

inTrain <- createDataPartition(iris$Species, p=0.8, list=F)

tr <- iris[inTrain,]
ts <- iris[-inTrain,]

model <- train(Species ~ ., data=iris, method="rpart")

pred <- predict(model, newdata=ts)

confusionMatrix(pred, ts$Species)

finalModel <- model$finalModel

finalModel

