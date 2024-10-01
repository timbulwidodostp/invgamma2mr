# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# 2-parameter (two parameter) Inverse Gamma Distribution Use invgamma2mr (VGAMextra) With (In) R Software
install.packages("VGAMextra")
library("VGAMextra")
invgamma2mr = read.csv("https://raw.githubusercontent.com/timbulwidodostp/invgamma2mr/main/invgamma2mr/invgamma2mr.csv",sep = ";")
# Estimation 2-parameter (two parameter) Inverse Gamma Distribution Use invgamma2mr (VGAMextra) With (In) R Software
invgamma2mr_1 <- vglm(cbind(mpg, price) ~ 1, family = invgamma2mr(zero = NULL, ishape = exp(2), imethod = 1), data = invgamma2mr, trace = TRUE)
Coef(invgamma2mr_1)
c(Coef(invgamma2mr_1), log(mean(invgamma2mr$mpg)), log(mean(invgamma2mr$price)))
summary(invgamma2mr_1)
vcov(invgamma2mr_1, untransform = TRUE)
invgamma2mr_2 <- vglm(mpg ~ price, family = invgamma2mr(lshape = "loglink", zero = NULL), data = invgamma2mr, trace = TRUE)
coef(invgamma2mr_2, matrix = TRUE)
summary(invgamma2mr_2)
vcov(invgamma2mr_2)
# 2-parameter (two parameter) Inverse Gamma Distribution Use invgamma2mr (VGAMextra) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished