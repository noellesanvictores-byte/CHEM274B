
DROP TABLE IF EXISTS myTable ;

CREATE TABLE myTable (
    month INT,
    dayOfMonth INT,
    uniqueCarrierCode TEXT,
    flightNumber INT,
    scheduledDepartureTime INT,
    diverted INT,
    city TEXT
) ;

INSERT INTO myTable (month, dayOfMonth, uniqueCarrierCode, flightNumber, scheduledDepartureTime, diverted, city)
    SELECT f.month, f.dayOfMonth, f.uniqueCarrierCode, f.flightNumber, f.scheduledDepartureTime, f.diverted, i.city
    FROM flights AS f, iata AS i
    WHERE f.destinationCode = i.iata ;
