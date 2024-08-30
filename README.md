# Dimensional Model Design:

## Introduction

The tables form in this model are conceptually aligned with Kimball’s dimensional modeling principles and are well-suited for a data warehouse or an analytical database. They provide a structured way to analyze the car repair shop’s operations comprehensively.
## Requirements:
The model aims to satisfy the following general needs:
- Analyze the sales performance of our car repair centers.
- Locations across western Canada.
- Provide flexible analysis of sales of both services and parts by customer, vehicle
brand/model/year, and shop location.

## Information:
The Model was created Using the following key Pieces of Information from the
Sales Invoice:
### 1. Customer Information:
- Name: Identifies the customer.
- Address: Provides geographical data for analysis.
- Phone Number: Contact information for follow-ups and marketing.
### 2. Vehicle Information:
- Make: Brand of the vehicle.
- Model: Specific model of the vehicle.
- Year: Manufacture year of the vehicle.
- Color: Helps in identifying vehicles.
- VIN: Unique vehicle identifier.
- Registration Number: Another identifier for the vehicle.
- Mileage: Indicates the usage of the vehicle, which can correlate with service
needs.
### 3. Jobs Performed:
- Description: Details about the service performed.
- Hours: Labor hours spent on the service.
- Rate: Hourly rate for labor.
- Amount: Total labor charge for the service.
### 4. Parts Information:
- Part Number: Unique identifier for the part.
- Part Name: Descriptive name of the part.
- Quantity: Number of parts used.
- Unit Price: Cost per part.
- Amount: Total charge for the parts used.
### 5. Financial Information:
- Total Labor Charges: Sum of all labor charges.
- Total Parts Charges: Sum of all parts charges.
- Sales Tax Rate: Tax rate applied to the sale.
- Total Sales Tax: Total tax amount.
- Total Amount: Total invoice amount (labor + parts + tax).
