summary(data)

colSums(is.na(data))

correlation_matrix <- cor(
  numeric_data,
  use = "complete.obs"
)

gender_test <- chisq.test(
  table(data$Sex, data$Survived)
)

model <- glm(
  Survived ~ Age + Sex + Pclass + SibSp + Parch + Fare,
  data = train_data,
  family = binomial
)

confusion <- confusionMatrix(
  prediction,
  actual,
  positive = "1"
)
