cd ../congress



./run govinfo --bulkdata=BILLSTATUS --congress=116
./run bills --congress=116
./run govinfo --collections=BILLS --congress=116 --store=text --extract=text
./run votes --congress=116 --session=2020
