/**
  Tori McDonald
  CECS 323
  Project 1
  Brown
**/

-- 1. For each bus stop, report the number of routes that go through that stop.
    select stopID, count(routeNumber) as "Number of Routes"
    from (
        select distinct stopID, routeNumber
        from cecs323s25.Arrivals
        order by stopID, routeNumber
    ) as distinctRoutes
    group by stopID
    order by stopID;

/**
2. For each bus route, list the bus stops in proper order. Order your report by bus route number
first, then the stop within that bus route in chronological order. Do this in both directions.
**/
    select routeNumber, direction, stopName, stopOrderNumber
    from cecs323s25.Arrivals
        inner join cecs323s25.Stops using (stopID)
    group by routeNumber, direction, stopName, stopOrderNumber
    order by routeNumber, direction, stopOrderNumber;

/**
3. For each bus route, within each time frame, report on the average length of time that it takes to
get from one end of the bus route to the other.
**/
    SELECT A.mapID, A.routeNumber, A.direction, A.arrivalTime AS StartTime, B.arrivalTime AS EndTime, avg((B.arrivalTime - A.arrivalTime)) as "Route Duration"
    FROM cecs323s25.Arrivals A
        inner join cecs323s25.Arrivals B using (mapID)
    WHERE A.routeNumber = B.routeNumber
    and A.mapID = B.mapID
    and A.direction = B.direction
    AND A.stopOrderNumber = 1
    AND B.stopOrderNumber = 4
    group by mapID, routeNumber, direction;

-- 4. Report on the bus stop with the largest number of routes that go through that stop.
    select routeNumber, stopName, count(routeNumber) as "Number of Routes"
    from cecs323s25.Arrivals
        inner join cecs323s25.Stops using (stopID)
    group by routeNumber
    having count(routeNumber) = (
        select max(totalRoutes)
        from (
            select stopID, count(routeNumber) as totalRoutes
            from cecs323s25.Arrivals
            group by stopID
        ) TotalCounts
    );

/**
5. For each bus stop with all of the routes within a group of routes, find the bus stop that is in the
fewest routes.
**/
    select clusterID, stopID, min(totalRoutes) as "Number of Routes"
    from (
        select clusterID, stopID, count(routeNumber) as totalRoutes
        from cecs323s25.Arrivals
        group by clusterID, stopID
        order by clusterID, count(routeNumber)
    ) counts
    group by clusterID;
