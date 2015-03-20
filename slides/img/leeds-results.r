library("dplyr")
library("ggplot2")

## Based on Table 1, Model 1 in Leeds (1999)
res <- data_frame(
    type = c("both democratic", "both autocratic", "mixed"),
    coef = c(3.108, 3.062, 2.180) + 3.523,
    se = c(0.408, 0.275, 0.255)
    )

res <- mutate(res,
              lo = coef - 1.96 * se,
              hi = coef + 1.96 * se)

## Plot
pdf(file = "leeds-results.pdf",
    width = 5.5,
    height = 4)
print(
    ggplot(res, aes(x = type, y = coef, ymin = lo, ymax = hi))
    + geom_pointrange()
    + xlab("")
    + ylab("Cooperation\n(out of 15)")
    + theme_classic()
    + theme(axis.title.y = element_text(angle = 0),
            panel.background = element_blank(),
            plot.background = element_blank())
    )
dev.off()
