cancer <- read.csv(file="data/cancer.csv", header=T, skip=1, row.names=1)[11:2,]
microbiome <- read.csv(file="data/microbiome.csv", header=T, skip=1, row.names=1)[11:2,]
years <- 2005:2014

cancer_growth <- diff(cancer) / cancer[1:9]
microbiome_growth <- diff(microbiome) / microbiome[1:9]

median(cancer_growth)
median(microbiome_growth)


png("results/citation_plot.png")
par(mar=c(5,6,1,1))
plot(NA, type="n", xlab="Year", ylab="Growth in number of papers published\nrelative to previous year (%)", xlim=c(2006,2014), ylim=c(0,0.6), axes=F)

points(microbiome_growth~years[2:10], type="l", lwd=2, col="blue")
points(cancer_growth~years[2:10], type="l", lwd=2, col="red")

axis(1)
axis(2, at=seq(0,0.6,0.2), label=seq(0,60,20), las=2)
box()

legend(x=2006, y=0.6, legend=c("Cancer", "Microbiome"), lwd=3, col=c("red", "blue"))
dev.off()
