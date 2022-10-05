# Techmoan
Data model to keep track of a collector's extensive retro electronics collection

**Case**

Matthew Taylor, better known by his stage name Techmoan, is a YouTuber and blogger who has been active since 2009.

The Techmoan YouTube channel specializes in featuring consumer technology reviews and "RetroTech" documentaries. Videos posted to this channel often include reviews, tests, review of historical documentation, and sometimes an exploration of the inner workings of products.

His statements have been quoted on websites such as The Daily Telegraph, Gizmodo, Reddit, and MarketWatch.

“I enjoy looking at tech and this site gives me a reason to buy plenty of new (and old) gadgets. The adverts overlaid on the videos and dotted about this site might be an annoyance to some, but they help me to afford to buy the things I review. Links are also affiliated where possible, which means I receive a small percentage from each sale.” -Matthew Taylor

As a person’s collection grows, it becomes increasingly difficult to track through manual methods, and it is often useful to develop a computer-based system for this purpose.

The task is to create a data model consisting of between six and ten classes (tables) that can be used to keep track of Techmoan's extensive retro electronics collection.

**Puropse**

The model records all the information about devices featured on Techmoan’s Youtube channel individually, but groups devices of the same or similar type into categories. Information like the device source(where it was purchased, or what sponsor it came from), their features, referenced documentation and any accessories that may have been
purchased for a device are stored in their individual tables. The “DeviceModels” table in addition to other attributes also records the manufacturer of the item as well as the Country/Region a specific device model was made for, similar to the “AffiliateLinks” table. The model also includes a table to keep track of youtube videos that may be associated with a device.
