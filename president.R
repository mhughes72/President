presidents <- function() {
  
  library("ggplot2")
  library("reshape2")
  #Comedic Potential of Presidential Candidates
  # Read data files
  presidents <- read.csv("data/presidents.csv")
  
 mdata <- melt(presidents, id=c("Candidate"))
  
  


  p<-ggplot(mdata, aes(x=Candidate, y=value, fill=Candidate)) +
    geom_bar(stat="identity") + 
    facet_grid(. ~ variable, scales="free") +
    ylab("Potential Hilarity") + 
    xlab("") +
    ggtitle(expression("Comedic Potential of Presidential Candidates")) +
  
  theme(
    title = element_text(size= 18),
    axis.title.y = element_text(size = 18),
    axis.text.x=element_blank(),
    axis.ticks.x=element_blank(),
    axis.ticks.y=element_blank(),
    legend.text = element_text(size=12),
    legend.key = element_rect(fill = "navy"),
    legend.background = element_rect(fill = "white"),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.background = element_rect(fill = "white"),
    strip.text = element_text(size=14)
  )
  print(p)
  
  return(mdata)
  
}