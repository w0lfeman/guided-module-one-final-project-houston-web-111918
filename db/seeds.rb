r1 = Race.create(location:"Austin, Texas", date:Date.new(2018,9,14), total_laps:56, total_distance:192, winner:"Lewis Hamilton")
r2 = Race.create(location:"Barcelona, Spain", date:Date.new(2018,12,1), total_laps:66, total_distance:190, winner:"Fernando Alonso")
r3 = Race.create(location:"Singapore, Singapore", date:Date.new(2018,10,11), total_laps:61, total_distance:191, winner:"Sebastian Vettell")

d1 = Driver.create(name:"Lewis Hamilton", points:408, wins:11 ,driver_weight:155 ,driver_height:69)
d2 = Driver.create(name:"Sebastian Vettel", points:320, wins:5 ,driver_weight:160 ,driver_height:68)
d3 = Driver.create(name:"Ferrnando Alonso", points:50, wins:0 ,driver_weight:150 ,driver_height:68)

dr1 = DriverRace.create(race_id:r1, driver_id:d1)
dr2 = DriverRace.create(race_id:r2, driver_id:d3)
dr3 = DriverRace.create(race_id:r3, driver_id:d2)