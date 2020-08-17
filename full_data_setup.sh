cd ../congress


#Collect Contemporary Bills
./scripts/bills.sh

#Get older bills through tar-gz via the archive
#How to merge it all from the beginning?
#At this point can be done manually, but that should be changed

#Download statutes at large for bill_reference? Could take a while, not sure about how much use out of it too
#./scripts/statutes.sh

#Get Bill Text
./scripts/get_texts.sh

#Get Votes:
./scripts/votes.sh
#this will cause problems if the older bills have not been brought in yet.
