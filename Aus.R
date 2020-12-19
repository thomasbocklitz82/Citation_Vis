require("scholar")
Typ<-"FUiFDqUAAAAJ&hl"
Profile<-get_profile(Typ)
Publications<-get_publications(Typ)
Impact<-get_impactfactor(journals=unique(Publications$journal)
                         , max.distance = 0.05)

hist(Publications$year)

Pubid<-as.character(Publications$pubid[1])
Cid<-as.character(Publications$cid[1])

TEMP<-get_article_cite_history(id=Typ, article=Pubid)

get_num_articles(Typ)
get_num_distinct_journals(Typ)
get_oldest_article(Typ)
Cit.Hist<-get_citation_history(id=Typ)
plot(Cit.Hist$cites~Cit.Hist$year)

TMP<-get_complete_authors(id=Typ, pubid=Cid)


