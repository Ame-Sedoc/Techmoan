INSERT INTO devicesources (DeviceSourceId
, DeviceSource
, DeviceSourceLink
, Sponsor) VALUES 
(1, 'Coturn Website', 'https://coturn.de/', NULL)
, (2, 'Amazon', 'shorturl.at/dlwAK', NULL)
, (3, 'Ebay', 'http://ebay.us/x8LlEd', NULL)
, (4, 'Amazon', 'https://amzn.to/3Ij8OdH', NULL)
, (5, 'Sony', NULL, 'Sony')
, (6, 'Japanese Auction Website', 'https://www.jauce.com/', NULL)
, (7, 'Jamie', NULL, 'Jamie')
, (8, 'Auction', NULL, NULL)
, (9, 'Daan Tech', 'https://daan.tech/en/product/bob-mini-dishwasher/', 'Daan Tech')
, (10, 'Ebay', 'https://ebay.us/GOYUEi', NULL)
, (11, 'Amazon', 'https://amzn.to/3bN4AvH', NULL);


INSERT INTO devicemodels (ModelId 
, ModelName 
, ModelNumber 
, ManufacturerName 
, CountryRegion) VALUES 
(1, 'Coturn CT-01', 'CT-01', 'Coturn', 'Universal')
, (2, 'Peripage A6', 'MSO6881814196626MC', 'Bisofice','Universal')
, (3, 'Balmuda KO1 Series', 'K01K-GW', 'Balmuda Inc', 'Korea')
, (4, 'Relish B095XH6J35', 'AC-02', 'Relish', 'Universal')
, (5, 'Linkbuds', 'WF-L900', 'Sony', 'Universal')
, (6, 'Hi-kara', 'HK9779HJV', 'KORG', 'Japan')
, (7, 'Mitsubishi TX-L50', 'TX-L50', 'Mitsubishi', 'Universal')
, (8, 'Sony PCT', 'PCT-15', 'Sony', 'Universal')
, (9, 'Bob', 'BOBMINI2020', 'Daan Tech', 'Universal')
, (10, 'Sony CMT Series', 'CMT-CP505MD', 'Sony', 'Universal')
, (11, 'Sony NW-A50 Series', 'NW-A55', 'Sony', 'European Union');


INSERT INTO categories (CategoryId 
, CategoryName 
, CategoryDescription) VALUES 
(1, 'Record Players', 'To play vinyl records')
, (2, 'Thermal Picture Printers', 'To print photos on thermal paper')
, (3, 'Kitchen Appliances', 'Devices used in the kitchen')
, (4, 'Radios', 'AM/FM Radios')
, (5, 'Headphones', 'In-ear Earphones, earbuds and headphones')
, (6, 'Portable Music Players', 'Portable Music playing devices')
, (7, 'Non-Portable Music Players', 'Large, non portable music players')
, (8, 'Retro Cameras', 'Vintage photo and video camera and camera enabled devices')
, (9, 'Dashboard Cameras', 'Car dash cams');


INSERT INTO status (StatusId 
, StatusName 
, StatusDescription) VALUES 
(1, 'Wishlist', 'Devices techmoan hopes to buy')
, (2, 'Ordered', 'Devices techmoan already ordered but have not been delivered')
, (3, 'In the Studio', 'Devices techmoan is ready to make videos on')
, (4, 'In Storage', 'Devices techmoan has either featured or not or are for sale, but are not immediately needed')
, (5, 'Gifted', 'Devices Techmoan gives out as gifts')
, (6, 'For Sale', 'Devices Techmoan wants to sell')
, (7, 'Junked', 'Devices that can longer useful are junked')
, (8, 'Personal Use', 'Devices Techmoan uses personally');


INSERT INTO devices (DeviceId
, DeviceName 
, ModelId 
, SerialNumber 
, ManufactureDate 
, Description 
, StatusId 
, OriginalPrice 
, PurchasePrice 
, CurrentPrice 
, AcquisitionDate 
, ConditionAtAcquisition 
, YoutubeVideoLink 
, DeviceSourceId 
, CategoryId 
, DeviceWeight 
, DeviceDimensions) VALUES 
(1, 'Coturn Portable Record Player', 1, 'CT-01-ADKNK89', '2021-07-24', 'Sound burger, portable record player', 3, 355.71, 355.71, 463.83, '2021-09-15', 'New', 'https://www.youtube.com/watch?v=zZF9TdLsjt8', 1, 1, 2.3, '12.5 x 5 x 1 in')
, (2, 'Bisofice Peripage Mini Printer', 2, '2019DP1861', '2019-06-18', 'Mini photo printer', 4, 58.76, 58.76, 59.00,'2021-06-13', 'New', 'https://www.youtube.com/watch?v=EW8svX5OErc', 2, 2, 0.9, '18 x 10 x 5 cm')
, (3, 'Balmuda Toaster Oven', 3, 'KBM920MM00232', '2020-02-01', 'Toaster oven', 6, 230, 317.13, 570.90, '2021-01-24', 'New', 'https://www.youtube.com/watch?v=4-nNEUBCvds', 3, 3, 10.2, '35.8 x 32 x 20.8 cm' )
, (4, 'Relish Radio and Music Player', 4, 'RRH834743455', '2021-02-11', 'Dementia / Alzheimer’s friendly DAB+ & FM RADIO', 5, '130.60', 130.60, 130.60, '2022-01-11', 'New', 'https://www.youtube.com/watch?v=gZCw9bUJ6q8&t=784s', 4, 4, 2, '26.1 x 17.2 x 12.7 cm')
, (5, 'Sony LinkBuds', 5, 'YY2953', '2021-11-20', 'Sony LinkBuds feature a comfortable open-ring design', 3, '195.90', DEFAULT, '198.20', '2022-02-01', 'New', 'https://www.youtube.com/watch?v=GXMtaZTBMzw&t=23s', 5, 5, 0.09, '41.4 x 48.5 x 30.9 mm')
, (6, 'KORG Hi-Kara Personal Karaoke', 6, '0Y8285', '1989-01-03', 'Portable Karaoke player from 1989 Japan', 6, 400, 650, 650,'2020-08-29', 'Used', 'https://www.youtube.com/watch?v=Uc79POGOVL8', 6, 6, 4, '36.8 x 31 x 19.8 cm')
, (7, 'Mitsubishi Boombox', 7, 'HHB34780NB', '1986-03-19', 'Retro boombox with cassette changer', 6, 310, DEFAULT, 695, '2021-08-15', 'Used', 'https://www.youtube.com/watch?v=3bINYUJsqyE&t=49s', 7, 7, 17, '25.6 x 8.9 x 7.7 in')
, (8, 'Sony Face-to-Face', 8, '100620', '1988-01-19', 'Vintage Sony Face to Face Still Image Transceiver Picture Phone', 6, 500, 240, 240, '2021-04-29', 'Used', 'https://www.youtube.com/watch?v=8_Yz0TT439Q', 8, 8, 4, '24.1 x 19 x 16.8 cm')
, (9, 'Bob Mini Dishwasher', 9, 'BO82379HJ', '2020-11-29', 'Counter-top dishwasher', 8, 390.49, DEFAULT, 390.49, '2021-01-08', 'New', 'https://www.youtube.com/watch?v=hVup5ya0WVQ', 9, 3, 22, '19.3 13.4 19.3 in' )
, (10, 'Sony Mini HiFi system', 10, '6913803', '2002-10-20', ' Mini HiFi system', 6, 562.22, 150, 208.96, '2021-04-11', 'Refurbished', 'https://www.youtube.com/watch?v=OUvau-DMuEY', 10, 7, 11.3, '175 × 720 × 341.5 mm')
, (11, 'Sony NW-A55 Walkman', 11, 'ERBUS7492', '2019-03-30', 'Digital walkman', 6, 235.08, 235.08, 299.99, '2020-01-24', 'New', 'https://www.youtube.com/watch?v=7VPaXdQoKXs', 11, 6, 0.22, '3.84 x 2.20 x 0.43 in');


INSERT INTO accessories (AccessoryId
, AccessoryName
, AccessoryPrice
, DeviceId) VALUES 
(1, 'Carrying Case', DEFAULT, 1)
, (2, 'DC Power Adapter', DEFAULT, 4)
, (3, 'Charging Case', DEFAULT, 5)
, (4, 'Music Cards', DEFAULT, 6)
, (5, 'WM-Port Cable', DEFAULT, 10);


INSERT INTO affiliatelinks (LinkId
, Title
, WebsiteLink
, CountryRegion
, DeviceId) VALUES 
(1, 'Amazon UK', 'https://amzn.to/3hvBaWx', 'UK',2)
, (2, 'ALIEXPRESS', 'https://s.click.aliexpress.com/e/_AlFeep', 'Worldwide', 2)
, (3, 'Ebay', 'http://ebay.us/x8LlEd', 'Worldwide', 3)
, (4, 'Amazon France', 'https://amzn.to/3J9JZSt', 'France', 4)
, (5, 'Ebay UK', 'https://ebay.us/GOYUEi', 'UK', 10);


INSERT INTO customers (CustomerId 
, FirstName 
, LastName 
, EmailAddress) VALUES 
(1, 'Jessica', 'Smith', 'jsmith@me.com')
, (2, 'Kelvin', 'Devon', 'kdev@mail.ca')
, (3, 'Luch', 'Larry', 'llarry@mail.com')
, (4, 'Norma', 'Litt', 'nlitt@ymail.ca')
, (5, 'Stanley', 'Dave', 'sdave@gmail.ca');


INSERT INTO deviceorders (OrderId 
, CustomerId 
, OrderDate) VALUES 
(1, 3, '2021-04-09')
, (2, 5, '2020-10-08')
, (3, 2, '2021-07-09')
, (4, 1, '2021-09-10')
, (5, 4, '2020-03-10');


INSERT INTO features (FeatureId
, FeatureTitle
, FeatureDescriprion) VALUES 
(1, 'Bluetooth', 'Device is bluetooth enabled')
, (2, 'Portable', 'Device can be carried around')
, (3, 'WiFi', 'Device can be connected to wifi')
, (4, 'Wireless', 'Device does not need to be connected with a wire')
, (5, 'USB Outlet', 'Can be read with other devices')
, (6, 'Dementia Friendly', 'Can be used by people with dementia')
, (7, 'Cassette Player', 'Can play audio cassete tapes');


INSERT INTO devicesfeatures (DeviceFeatureId
, FeatureId
, DeviceId) VALUES 
(1, 1, 1)
, (2, 2, 1)
, (3, 3, 1)
, (4, 1, 2)
, (5, 6, 4)
, (6, 2, 9)
, (7, 3, 9);


INSERT INTO repairs (RepairId
, RepairType
, RepairDescription) VALUES 
(1, 'Cleaning', 'Clean the device')
, (2, 'Replace Parts', 'Need to get some new parts for the device')
, (3, 'Upgrade', 'Improve device features, see links in documentations table')
, (4, 'Dust Proof', 'Dust proofing the device')
, (5, 'Servicing', 'Servicing parts of the device');


INSERT INTO devicesrepairs (DeviceRepairId
, DeviceId
, RepairId
, AdditionalInfo) VALUES 
(1, 7, 1, 'Clean the tape holder')
, (2, 10, 1, 'Clean the device')
, (3, 10, 4, 'Dust proof the outer part of the system')
, (4, 11, 3, 'Improve audio firmware and add fm radio')
, (5, 10, 5, 'Servicing the internal device components');


INSERT INTO forsaledevices (SaleDeviceId 
, DeviceId 
, OrderId
, DiscountPercent
, CurrentPrice) VALUES 
(1, 3, 1, 10.00, 570.90)
, (2, 6, 2, DEFAULT,  650)
, (3, 8, 3, 10.00, 240)
, (4, 10, 4, DEFAULT, 208.96)
, (5, 11, 5, DEFAULT, 299.99)
, (6, 7, 4, DEFAULT, 695);


INSERT INTO referenceddocumentations (DocumentationID
, Title
, WebsiteLink
, Description
, DeviceId) VALUES 
(1, 'Bob Dimensions', 'https://daan.tech/can/discover-bob-mini-dishwasher/dimensions-sizes/', 'Bob Minidishwasher dimensions', 9)
, (2, 'Bob Product Sheet', NULL, 'Bob Minidishwasher product sheet', 9)
, (3, 'Sony CMT-CP505MD Manual', 'https://www.sony.co.uk/electronics/support/audio-systems-cmt-series/cmt-cp505md/manuals', 'Sony CMT-CP505MD Manual', 10)
, (4, 'Sony NW Dest Tool', 'https://www.rockbox.org/wiki/SonyNWDestTool', 'Sony NW/NWZ series: destination and sounds pressure tool', 11)
, (5, 'Mr Walkmans Custom Firmwares', 'https://ww38.mrwalkman.ml/', 'Mr Walkmans Custom Firmwares', 11);