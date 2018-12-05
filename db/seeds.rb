Race.destroy_all
 
Race.create!([{
    location:"Houston" ,
    date: 11/03/2018,
    total_laps: 5 ,
    total_distance:50
},
{
    location:"Austin",
    date: 12/04/2018,
    total_laps: 4 ,
    total_distance: 80
},
])
 
p "Created #{Race.count} races"