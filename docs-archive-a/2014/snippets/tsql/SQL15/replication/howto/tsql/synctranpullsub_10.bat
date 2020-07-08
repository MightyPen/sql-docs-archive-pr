SET instancename=GLENGATEST2

REM<snippetbat_synctranpullsub_10>
REM -- Declare the variables.
SET Publisher=%instancename%
SET Subscriber=%instancename%
SET PublicationDB=AdventureWorks2012
SET SubscriptionDB=AdventureWorks2012Replica 
SET Publication=AdvWorksProductsTran

REM -- Start the Distribution Agent.
REM -- The following command must be supplied without line breaks.
"C:\Program Files\Microsoft SQL Server\120\COM\DISTRIB.EXE" -Subscriber %Subscriber% 
-SubscriberDB %SubscriptionDB% -SubscriberSecurityMode 1 -Publication %Publication% 
-Publisher %Publisher% -PublisherDB %PublicationDB% -Distributor %Publisher% 
-DistributorSecurityMode 1 -Continuous -SubscriptionType 1
REM</snippetbat_synctranpullsub_10>

PAUSE