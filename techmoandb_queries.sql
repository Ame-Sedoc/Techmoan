-- QUERY 1- List all devices (from the devices table) along with the categories they belong to (from the categories table)
-- Ordered by ManufactureDate from Devices table

SELECT
	de.DeviceName AS 'Device Name'
	, de.SerialNumber AS 'Serial Number'
	, DATE_FORMAT(de.ManufactureDate, '%M %e, %Y') AS 'Date of Manufacture'
	, de.DeviceWeight AS 'Device Weight (lb)'
	, de.ConditionAtAcquisition AS 'Device Condition'
	, ca.CategoryName AS 'Category'

	FROM devices de 
		INNER JOIN categories ca 
			ON de.CategoryId = ca.CategoryId

	ORDER BY de.ManufactureDate ASC;


-- QUERY 2- From the devices table, list each device that requires repair, their orginal and Current price, their manufacturer (from the devicemodels table),
-- the repair type (from the repairs table) they require along with any additional information regarding the repair from the devicesrepairs table
-- Non aggregate function used- LPAD
-- Used ROUND to format a decimal
-- Ordered by DeviceName from Devices table

SELECT
	de.DeviceName AS 'Device Name'
	, DATE_FORMAT(de.ManufactureDate, '%M %e, %Y') AS 'Manufacture Date'
	, LPAD((ROUND(de.OriginalPrice)), (CHAR_LENGTH(OriginalPrice) - 2), "$") AS 'Device Original Price(USD)'
	, LPAD((ROUND(de.CurrentPrice)), (CHAR_LENGTH(CurrentPrice) - 2), "$") AS 'Current Price(USD)'
	, de.DeviceWeight AS 'Device Weight(lb)'
	, dm.ManufacturerName AS 'Manufacturer'
	, re.RepairType AS 'Required Repair'
	, dr.AdditionalInfo AS 'Additional Repair Information'

	FROM devices de 
		LEFT JOIN devicemodels dm 
		ON de.ModelId = dm.ModelId
			INNER JOIN devicesrepairs dr 
			ON de.DeviceId = dr.DeviceId
				INNER JOIN repairs re 
				ON dr.RepairId = re.RepairId

	ORDER BY de.DeviceName DESC;
    
    
-- QUERY 3- List Customers, thier Order IDs, order and ship dates(ship date is three days after the order date), along with the sum of thier orders before the discount and after the discount
-- Aggregate function used - SUM
-- Non aggregate functions used - LPAD, RPAD, ADDDATE and CONCAT
-- Grouped by Order ID from the devices for sale (forsaledevices) table
-- Ordered by Customer first name

SELECT 
	CONCAT(cs.FirstName, ' ', cs.LastName) AS 'Customer Name'
	, fs.OrderId AS 'Order ID'
	, DATE_FORMAT(do.OrderDate, '%D %b %Y') AS 'Order Date'
	, DATE_FORMAT((ADDDATE(do.OrderDate, 3)), '%D %b %Y') AS 'Order Ship Date'
	, LPAD((SUM(fs.CurrentPrice)), (CHAR_LENGTH(CurrentPrice) + 1), "$") AS 'Order Total'
	, RPAD(fs.DiscountPercent, (CHAR_LENGTH(fs.DiscountPercent) + 1), "%") AS 'Discount Percentage'
	, LPAD((SUM(fs.CurrentPrice) - (SUM(CEILING((fs.CurrentPrice*fs.DiscountPercent) / 100)))), (CHAR_LENGTH(CurrentPrice) + 1), "$") AS 'Discounted Total'

	FROM customers cs 
		LEFT JOIN deviceorders do 
        ON cs.CustomerId = do.CustomerId 
			INNER JOIN forsaledevices fs 
            ON do.OrderId = fs.OrderId

GROUP BY fs.OrderId

ORDER BY cs.FirstName ASC;