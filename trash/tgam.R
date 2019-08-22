#tracheidograms with GAM

tgam<-function(anno1, numero1){

lumen.fitLA<- gam(LumenArea ~ s(shp,k=-1,bs="cs"), data=tlumens, quasipoisson, gamma=2, min.sp=0.01)

shp<-seq(min(tlumens$shp),max(tlumens$shp),1)

lumen.gamLA<- as.vector(predict(lumen.fitLA, data.frame(shp),type="response"))
puntigam1<-data.frame(shp, lumen.gamLA)
puntigam1$int <- as.numeric(cut(puntigam1$shp, numero1))
tLA1<-aggregate(puntigam1$lumen.gamLA~puntigam1$int,FUN=mean)
names(tLA1)<-c("N","LAgam")
horizontalstandard<-tLA1$N/max(tLA1$N)*100
tLA1$shpgam<-horizontalstandard
tLA1$year<-anno1

}


trachemapply<-(as.data.frame(mapply(tracheizzatore, anno1=prova2$anni,numero1=prova2$numero1, SIMPLIFY = TRUE, USE.NAMES=TRUE)))
