/**
  Tori McDonald
  CECS 323
  Project 1
  Brown
**/

INSERT INTO cecs323s25.Clusters (clusterID, description)
    VALUES
        (1, 'Downtown Long Beach/Alondra Blvd'),
        (2, 'Seal Beach/Signal Hill'),
        (3, 'North Long Beach/Ximeno Ave');

INSERT INTO cecs323s25.Schedules (timeFrame)
    VALUES
        ('Weekday'),
        ('Weekend'),
        ('Holiday');

INSERT INTO cecs323s25.Maps (mapID, clusterID, timeFrame)
    VALUES
        (1, 1, 'Weekday'),
        (1, 2, 'Weekday'),
        (1, 3, 'Weekday'),
        (2, 1, 'Weekend'),
        (2, 2, 'Weekend'),
        (2, 3, 'Weekend'),
        (3, 1, 'Holiday'),
        (3, 2, 'Holiday'),
        (3, 3, 'Holiday');

INSERT INTO cecs323s25.Stops (stopID, stopName)
    VALUES
        (1234, 'Los Alamitos/Ximeno'),
        (2345, 'Palo Verde/Atherton'),
        (3456, 'Norwalk/Redondo'),
        (4567, 'Lime/Linden'),
        (5678, 'Pacific/8th'),
        (6789, '2nd/PCH'),
        (7890, '2nd/Ocean'),
        (8901, 'Lime/7th'),
        (9012, '10th/Cherry'),
        (1111, 'Earl Warren Dr/Atherton'),
        (2222, 'PCH/Anaheim');

INSERT INTO cecs323s25.busRoutes (routeNumber, routeName, clusterID, startStopID, endStopID)
    VALUES
        (91, '7th/Bellflower', 1, 1234, 9012),
        (92, 'Woodruff', 1, 2345, 1234),
        (93, 'Clark', 1, 9012, 4567),
        (51, 'Los Altos', 2, 2345, 5678),
        (52, 'Ocean', 2, 8901, 1111),
        (56, 'New York Blvd', 2, 1111, 2222),
        (104, 'Broadway', 3, 3456, 7890),
        (116, 'Lemon', 3, 2222, 2345),
        (96, 'Long Beach Blvd', 3, 6789, 7890);

INSERT INTO cecs323s25.Bounds (direction)
    VALUES
        ('Northbound'),
        ('Southbound'),
        ('Eastbound'),
        ('Westbound');

INSERT INTO cecs323s25.Buses (busNumber, routeNumber, direction)
    VALUES
        (101, 91, 'Northbound'),
        (101, 91, 'Southbound'),
        (101, 92, 'Northbound'),
        (101, 92, 'Southbound'),
        (101, 93, 'Northbound'),
        (101, 93, 'Southbound'),
        (101, 51, 'Northbound'),
        (101, 51, 'Southbound'),
        (101, 52, 'Southbound'),
        (101, 52, 'Northbound'),
        (101, 56, 'Southbound'),
        (101, 56, 'Northbound'),
        (101, 104, 'Eastbound'),
        (101, 104, 'Westbound'),
        (101, 116, 'Eastbound'),
        (101, 116, 'Westbound'),
        (101, 96, 'Eastbound'),
        (101, 96, 'Westbound');

INSERT INTO cecs323s25.Arrivals (mapID, clusterID, busNumber, routeNumber, direction, stopID, stopOrderNumber, arrivalTime)
    VALUES
        (1, 1, 101, 91, 'Northbound', 1234, 1, '12:00'),
        (1, 1, 101, 91, 'Northbound', 5678, 2, '12:05'),
        (1, 1, 101, 91, 'Northbound', 2222, 3, '12:10'),
        (1, 1, 101, 91, 'Northbound', 9012, 4, '12:15'),
        (1, 1, 101, 91, 'Southbound', 9012, 1, '08:00'),
        (1, 1, 101, 91, 'Southbound', 2222, 2, '08:05'),
        (1, 1, 101, 91, 'Southbound', 5678, 3, '08:10'),
        (1, 1, 101, 91, 'Southbound', 1234, 4, '08:15'),

        (1, 1, 101, 92, 'Northbound', 2345, 1, '09:00'),
        (1, 1, 101, 92, 'Northbound', 1111, 2, '09:05'),
        (1, 1, 101, 92, 'Northbound', 3456, 3, '09:10'),
        (1, 1, 101, 92, 'Northbound', 1234, 4, '09:15'),
        (1, 1, 101, 92, 'Southbound', 1234, 1, '08:00'),
        (1, 1, 101, 92, 'Southbound', 3456, 2, '08:05'),
        (1, 1, 101, 92, 'Southbound', 1111, 3, '08:10'),
        (1, 1, 101, 92, 'Southbound', 2345, 4, '08:15'),

        (1, 1, 101, 93, 'Northbound', 9012, 1, '08:00'),
        (1, 1, 101, 93, 'Northbound', 2222, 2, '08:05'),
        (1, 1, 101, 93, 'Northbound', 8901, 3, '08:10'),
        (1, 1, 101, 93, 'Northbound', 4567, 4, '08:15'),
        (1, 1, 101, 93, 'Southbound', 4567, 1, '12:00'),
        (1, 1, 101, 93, 'Southbound', 8901, 2, '12:05'),
        (1, 1, 101, 93, 'Southbound', 2222, 3, '12:10'),
        (1, 1, 101, 93, 'Southbound', 9012, 4, '12:15'),

        (1, 2, 101, 51, 'Northbound', 2345, 1, '09:00'),
        (1, 2, 101, 51, 'Northbound', 9012, 2, '09:05'),
        (1, 2, 101, 51, 'Northbound', 3456, 3, '09:10'),
        (1, 2, 101, 51, 'Northbound', 5678, 4, '09:15'),
        (1, 2, 101, 51, 'Southbound', 5678, 1, '09:25'),
        (1, 2, 101, 51, 'Southbound', 3456, 2, '09:30'),
        (1, 2, 101, 51, 'Southbound', 9012, 3, '09:35'),
        (1, 2, 101, 51, 'Southbound', 2345, 4, '09:40'),

        (1, 2, 101, 52, 'Northbound', 8901, 1, '08:00'),
        (1, 2, 101, 52, 'Northbound', 7890, 2, '08:05'),
        (1, 2, 101, 52, 'Northbound', 4567, 3, '08:10'),
        (1, 2, 101, 52, 'Northbound', 1111, 4, '08:15'),
        (1, 2, 101, 52, 'Southbound', 1111, 1, '08:25'),
        (1, 2, 101, 52, 'Southbound', 4567, 2, '08:30'),
        (1, 2, 101, 52, 'Southbound', 7890, 3, '08:35'),
        (1, 2, 101, 52, 'Southbound', 8901, 4, '08:40'),

        (1, 2, 101, 56, 'Northbound', 1111, 1, '11:00'),
        (1, 2, 101, 56, 'Northbound', 4567, 2, '11:05'),
        (1, 2, 101, 56, 'Northbound', 3456, 3, '11:10'),
        (1, 2, 101, 56, 'Northbound', 2222, 4, '11:15'),
        (1, 2, 101, 56, 'Southbound', 2222, 1, '10:00'),
        (1, 2, 101, 56, 'Southbound', 3456, 2, '10:05'),
        (1, 2, 101, 56, 'Southbound', 4567, 3, '10:10'),
        (1, 2, 101, 56, 'Southbound', 1111, 4, '10:15'),

        (1, 3, 101, 104, 'Eastbound', 3456, 1, '12:00'),
        (1, 3, 101, 104, 'Eastbound', 6789, 2, '12:05'),
        (1, 3, 101, 104, 'Eastbound', 1234, 3, '12:10'),
        (1, 3, 101, 104, 'Eastbound', 7890, 4, '12:15'),
        (1, 3, 101, 104, 'Westbound', 7890, 1, '12:30'),
        (1, 3, 101, 104, 'Westbound', 1234, 2, '12:35'),
        (1, 3, 101, 104, 'Westbound', 6789, 3, '12:40'),
        (1, 3, 101, 104, 'Westbound', 3456, 4, '12:45'),

        (1, 3, 101, 116, 'Eastbound', 2222, 1, '04:00'),
        (1, 3, 101, 116, 'Eastbound', 6789, 2, '04:05'),
        (1, 3, 101, 116, 'Eastbound', 1111, 3, '04:10'),
        (1, 3, 101, 116, 'Eastbound', 2345, 4, '04:15'),
        (1, 3, 101, 116, 'Westbound', 2345, 1, '04:25'),
        (1, 3, 101, 116, 'Westbound', 1111, 2, '04:30'),
        (1, 3, 101, 116, 'Westbound', 6789, 3, '04:35'),
        (1, 3, 101, 116, 'Westbound', 2222, 4, '04:40'),

        (1, 3, 101, 96, 'Eastbound', 6789, 1, '03:00'),
        (1, 3, 101, 96, 'Eastbound', 2345, 2, '03:05'),
        (1, 3, 101, 96, 'Eastbound', 4567, 3, '03:10'),
        (1, 3, 101, 96, 'Eastbound', 7890, 4, '03:15'),
        (1, 3, 101, 96, 'Westbound', 7890, 1, '03:25'),
        (1, 3, 101, 96, 'Westbound', 4567, 2, '03:30'),
        (1, 3, 101, 96, 'Westbound', 2345, 3, '03:35'),
        (1, 3, 101, 96, 'Westbound', 6789, 4, '03:40');


INSERT INTO cecs323s25.Arrivals (mapID, clusterID, busNumber, routeNumber, direction, stopID, stopOrderNumber, arrivalTime)
    VALUES
        (2, 1, 101, 91, 'Northbound', 1234, 1, '12:00'),
        (2, 1, 101, 91, 'Northbound', 5678, 2, '12:15'),
        (2, 1, 101, 91, 'Northbound', 2222, 3, '12:30'),
        (2, 1, 101, 91, 'Northbound', 9012, 4, '12:45'),
        (2, 1, 101, 91, 'Southbound', 9012, 1, '08:00'),
        (2, 1, 101, 91, 'Southbound', 2222, 2, '08:15'),
        (2, 1, 101, 91, 'Southbound', 5678, 3, '08:30'),
        (2, 1, 101, 91, 'Southbound', 1234, 4, '08:45'),

        (3, 1, 101, 91, 'Northbound', 1234, 1, '12:00'),
        (3, 1, 101, 91, 'Northbound', 5678, 2, '12:30'),
        (3, 1, 101, 91, 'Northbound', 2222, 3, '13:00'),
        (3, 1, 101, 91, 'Northbound', 9012, 4, '13:30'),
        (3, 1, 101, 91, 'Southbound', 9012, 1, '08:00'),
        (3, 1, 101, 91, 'Southbound', 2222, 2, '08:30'),
        (3, 1, 101, 91, 'Southbound', 5678, 3, '09:00'),
        (3, 1, 101, 91, 'Southbound', 1234, 4, '09:30'),

        (2, 1, 101, 92, 'Northbound', 2345, 1, '09:00'),
        (2, 1, 101, 92, 'Northbound', 1111, 2, '09:15'),
        (2, 1, 101, 92, 'Northbound', 3456, 3, '09:30'),
        (2, 1, 101, 92, 'Northbound', 1234, 4, '09:45'),
        (2, 1, 101, 92, 'Southbound', 1234, 1, '08:00'),
        (2, 1, 101, 92, 'Southbound', 3456, 2, '08:15'),
        (2, 1, 101, 92, 'Southbound', 1111, 3, '08:30'),
        (2, 1, 101, 92, 'Southbound', 2345, 4, '08:45'),

        (3, 1, 101, 92, 'Northbound', 2345, 1, '09:00'),
        (3, 1, 101, 92, 'Northbound', 1111, 2, '09:30'),
        (3, 1, 101, 92, 'Northbound', 3456, 3, '10:00'),
        (3, 1, 101, 92, 'Northbound', 1234, 4, '10:30'),
        (3, 1, 101, 92, 'Southbound', 1234, 1, '08:00'),
        (3, 1, 101, 92, 'Southbound', 3456, 2, '08:30'),
        (3, 1, 101, 92, 'Southbound', 1111, 3, '09:00'),
        (3, 1, 101, 92, 'Southbound', 2345, 4, '09:30'),

        (2, 1, 101, 93, 'Northbound', 9012, 1, '08:00'),
        (2, 1, 101, 93, 'Northbound', 2222, 2, '08:15'),
        (2, 1, 101, 93, 'Northbound', 8901, 3, '08:30'),
        (2, 1, 101, 93, 'Northbound', 4567, 4, '08:45'),
        (2, 1, 101, 93, 'Southbound', 4567, 1, '12:00'),
        (2, 1, 101, 93, 'Southbound', 8901, 2, '12:15'),
        (2, 1, 101, 93, 'Southbound', 2222, 3, '12:30'),
        (2, 1, 101, 93, 'Southbound', 9012, 4, '12:45'),

        (3, 1, 101, 93, 'Northbound', 9012, 1, '08:00'),
        (3, 1, 101, 93, 'Northbound', 2222, 2, '08:30'),
        (3, 1, 101, 93, 'Northbound', 8901, 3, '09:00'),
        (3, 1, 101, 93, 'Northbound', 4567, 4, '09:30'),
        (3, 1, 101, 93, 'Southbound', 4567, 1, '12:00'),
        (3, 1, 101, 93, 'Southbound', 8901, 2, '12:30'),
        (3, 1, 101, 93, 'Southbound', 2222, 3, '13:00'),
        (3, 1, 101, 93, 'Southbound', 9012, 4, '13:30'),

        (2, 2, 101, 51, 'Northbound', 2345, 1, '09:00'),
        (2, 2, 101, 51, 'Northbound', 9012, 2, '09:15'),
        (2, 2, 101, 51, 'Northbound', 3456, 3, '09:30'),
        (2, 2, 101, 51, 'Northbound', 5678, 4, '09:45'),
        (2, 2, 101, 51, 'Southbound', 5678, 1, '10:00'),
        (2, 2, 101, 51, 'Southbound', 3456, 2, '10:15'),
        (2, 2, 101, 51, 'Southbound', 9012, 3, '10:30'),
        (2, 2, 101, 51, 'Southbound', 2345, 4, '10:45'),

        (3, 2, 101, 51, 'Northbound', 2345, 1, '09:00'),
        (3, 2, 101, 51, 'Northbound', 9012, 2, '09:30'),
        (3, 2, 101, 51, 'Northbound', 3456, 3, '10:00'),
        (3, 2, 101, 51, 'Northbound', 5678, 4, '10:30'),
        (3, 2, 101, 51, 'Southbound', 5678, 1, '09:25'),
        (3, 2, 101, 51, 'Southbound', 3456, 2, '09:55'),
        (3, 2, 101, 51, 'Southbound', 9012, 3, '10:25'),
        (3, 2, 101, 51, 'Southbound', 2345, 4, '10:55'),

        (2, 2, 101, 52, 'Northbound', 8901, 1, '08:00'),
        (2, 2, 101, 52, 'Northbound', 7890, 2, '08:15'),
        (2, 2, 101, 52, 'Northbound', 4567, 3, '08:30'),
        (2, 2, 101, 52, 'Northbound', 1111, 4, '08:45'),
        (2, 2, 101, 52, 'Southbound', 1111, 1, '09:25'),
        (2, 2, 101, 52, 'Southbound', 4567, 2, '09:40'),
        (2, 2, 101, 52, 'Southbound', 7890, 3, '09:55'),
        (2, 2, 101, 52, 'Southbound', 8901, 4, '10:10'),

        (3, 2, 101, 52, 'Northbound', 8901, 1, '08:00'),
        (3, 2, 101, 52, 'Northbound', 7890, 2, '08:30'),
        (3, 2, 101, 52, 'Northbound', 4567, 3, '09:00'),
        (3, 2, 101, 52, 'Northbound', 1111, 4, '09:30'),
        (3, 2, 101, 52, 'Southbound', 1111, 1, '10:00'),
        (3, 2, 101, 52, 'Southbound', 4567, 2, '10:30'),
        (3, 2, 101, 52, 'Southbound', 7890, 3, '11:00'),
        (3, 2, 101, 52, 'Southbound', 8901, 4, '11:30'),

        (2, 2, 101, 56, 'Northbound', 1111, 1, '11:00'),
        (2, 2, 101, 56, 'Northbound', 4567, 2, '11:15'),
        (2, 2, 101, 56, 'Northbound', 3456, 3, '11:30'),
        (2, 2, 101, 56, 'Northbound', 2222, 4, '11:45'),
        (2, 2, 101, 56, 'Southbound', 2222, 1, '10:00'),
        (2, 2, 101, 56, 'Southbound', 3456, 2, '10:15'),
        (2, 2, 101, 56, 'Southbound', 4567, 3, '10:30'),
        (2, 2, 101, 56, 'Southbound', 1111, 4, '10:45'),

        (3, 2, 101, 56, 'Northbound', 1111, 1, '12:00'),
        (3, 2, 101, 56, 'Northbound', 4567, 2, '12:30'),
        (3, 2, 101, 56, 'Northbound', 3456, 3, '13:00'),
        (3, 2, 101, 56, 'Northbound', 2222, 4, '13:30'),
        (3, 2, 101, 56, 'Southbound', 2222, 1, '10:00'),
        (3, 2, 101, 56, 'Southbound', 3456, 2, '10:30'),
        (3, 2, 101, 56, 'Southbound', 4567, 3, '11:00'),
        (3, 2, 101, 56, 'Southbound', 1111, 4, '11:30'),

        (2, 3, 101, 104, 'Eastbound', 3456, 1, '12:00'),
        (2, 3, 101, 104, 'Eastbound', 6789, 2, '12:15'),
        (2, 3, 101, 104, 'Eastbound', 1234, 3, '12:30'),
        (2, 3, 101, 104, 'Eastbound', 7890, 4, '12:45'),
        (2, 3, 101, 104, 'Westbound', 7890, 1, '13:15'),
        (2, 3, 101, 104, 'Westbound', 1234, 2, '13:30'),
        (2, 3, 101, 104, 'Westbound', 6789, 3, '13:45'),
        (2, 3, 101, 104, 'Westbound', 3456, 4, '14:00'),

        (3, 3, 101, 104, 'Eastbound', 3456, 1, '12:00'),
        (3, 3, 101, 104, 'Eastbound', 6789, 2, '12:30'),
        (3, 3, 101, 104, 'Eastbound', 1234, 3, '13:00'),
        (3, 3, 101, 104, 'Eastbound', 7890, 4, '13:30'),
        (3, 3, 101, 104, 'Westbound', 7890, 1, '14:00'),
        (3, 3, 101, 104, 'Westbound', 1234, 2, '14:30'),
        (3, 3, 101, 104, 'Westbound', 6789, 3, '15:00'),
        (3, 3, 101, 104, 'Westbound', 3456, 4, '15:30'),

        (2, 3, 101, 116, 'Eastbound', 2222, 1, '04:00'),
        (2, 3, 101, 116, 'Eastbound', 6789, 2, '04:15'),
        (2, 3, 101, 116, 'Eastbound', 1111, 3, '04:30'),
        (2, 3, 101, 116, 'Eastbound', 2345, 4, '04:45'),
        (2, 3, 101, 116, 'Westbound', 2345, 1, '05:00'),
        (2, 3, 101, 116, 'Westbound', 1111, 2, '05:15'),
        (2, 3, 101, 116, 'Westbound', 6789, 3, '05:30'),
        (2, 3, 101, 116, 'Westbound', 2222, 4, '05:45'),

        (3, 3, 101, 116, 'Eastbound', 2222, 1, '04:00'),
        (3, 3, 101, 116, 'Eastbound', 6789, 2, '04:30'),
        (3, 3, 101, 116, 'Eastbound', 1111, 3, '05:00'),
        (3, 3, 101, 116, 'Eastbound', 2345, 4, '05:30'),
        (3, 3, 101, 116, 'Westbound', 2345, 1, '06:00'),
        (3, 3, 101, 116, 'Westbound', 1111, 2, '06:30'),
        (3, 3, 101, 116, 'Westbound', 6789, 3, '07:00'),
        (3, 3, 101, 116, 'Westbound', 2222, 4, '07:30'),

        (2, 3, 101, 96, 'Eastbound', 6789, 1, '03:00'),
        (2, 3, 101, 96, 'Eastbound', 2345, 2, '03:15'),
        (2, 3, 101, 96, 'Eastbound', 4567, 3, '03:30'),
        (2, 3, 101, 96, 'Eastbound', 7890, 4, '03:45'),
        (2, 3, 101, 96, 'Westbound', 7890, 1, '04:00'),
        (2, 3, 101, 96, 'Westbound', 4567, 2, '04:15'),
        (2, 3, 101, 96, 'Westbound', 2345, 3, '04:30'),
        (2, 3, 101, 96, 'Westbound', 6789, 4, '04:45'),

        (3, 3, 101, 96, 'Eastbound', 6789, 1, '03:00'),
        (3, 3, 101, 96, 'Eastbound', 2345, 2, '03:30'),
        (3, 3, 101, 96, 'Eastbound', 4567, 3, '04:00'),
        (3, 3, 101, 96, 'Eastbound', 7890, 4, '04:30'),
        (3, 3, 101, 96, 'Westbound', 7890, 1, '05:00'),
        (3, 3, 101, 96, 'Westbound', 4567, 2, '05:30'),
        (3, 3, 101, 96, 'Westbound', 2345, 3, '06:00'),
        (3, 3, 101, 96, 'Westbound', 6789, 4, '06:30');
