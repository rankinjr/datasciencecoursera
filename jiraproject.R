jiraproject <- function(project) {
        library(RPostgreSQL)
        drv<-dbDriver("PostgreSQL")
        con<-dbConnect(drv,"jira_production",host="Jira-db.pd.local",port=5432,user="jira_read",password="05J21r!")
        q<-paste("select * from jiraissue ji inner join ",
                               "project p on ",
                                   "p.pname = '",project, "' and ",
                                   "p.id = ji.project limit 10", sep="")
                       
                        ##id from project where pname ='",project,"'",sep="")
        learn<-dbGetQuery(con,q )
                
        dbDisconnect(con)
        learn
}
