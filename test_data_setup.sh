cd ../congress



./run govinfo --bulkdata=BILLSTATUS --congress=113
./run bills --congress=113
./run govinfo --collections=BILLS --congress=113 --store=text --extract=text
./run votes --congress=113 --session=2014
