/**
  Tori McDonald
  CECS 323
  Project 1
  Brown
**/

create table cecs323s25.Clusters (
    clusterID       integer primary key,
    description     varchar(100),

    constraint cluster_ck unique key (description)
);

create table cecs323s25.Schedules (
    timeFrame           varchar(20) primary key
);

create table cecs323s25.Maps (
    mapID           integer,
    clusterID       integer,
    timeFrame       varchar(20),

    constraint map_pk primary key (mapID, clusterID),
    constraint map_ck unique key (timeFrame, clusterID),
    constraint map_cluster_fk foreign key (clusterID)
        references Clusters (clusterID),
    constraint map_sched_fk foreign key (timeFrame)
        references Schedules (timeFrame)
);

create table cecs323s25.Stops (
    stopID          integer primary key,
    stopName        varchar(100)
);

create table cecs323s25.busRoutes (
    routeNumber         integer primary key,
    routeName           varchar(20) unique key,
    clusterID           integer,
    startStopID         integer,
    endStopID           integer,

    constraint route_cluster_fk foreign key (clusterID)
        references Clusters (clusterID),
    constraint route_stop_fk01 foreign key (startStopID)
        references Stops (stopID),
    constraint route_stop_fk02 foreign key (endStopID)
        references Stops (stopID)

);

create table cecs323s25.Bounds (
    direction           varchar(20) primary key
);

create table cecs323s25.Buses (
    busNumber           integer,
    routeNumber         integer,
    direction           varchar(20),

    constraint bus_pk primary key (busNumber, routeNumber, direction),
    constraint bus_route_fk foreign key (routeNumber)
        references busRoutes (routeNumber),
    constraint bus_direction_fk foreign key (direction)
        references Bounds (direction)
);

create table cecs323s25.Arrivals (
    mapID                   integer,
    clusterID               integer,
    busNumber               integer,
    routeNumber             integer,
    direction               varchar(20),
    stopID                  integer,
    stopOrderNumber         integer,
    arrivalTime             time,

    constraint arrival_pk primary key (mapID, clusterID, busNumber, routeNumber, direction, stopID),
    constraint arrival_map_fk01 foreign key (mapID)
        references Maps (mapID),
    constraint arrival_map_fk02 foreign key (clusterID)
        references Maps (clusterID),
    constraint arrival_bus_fk01 foreign key (busNumber)
        references Buses (busNumber),
    constraint arrival_bus_fk02 foreign key (routeNumber)
        references Buses (routeNumber),
    constraint arrival_bus_fk03 foreign key (direction)
        references Buses (direction),
    constraint arrival_stop_fk foreign key (stopID)
        references Stops (stopID)
);
