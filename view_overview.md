so what are my views doing 
    -application folder 
        -welcome.html.erb 
            this is just a welcome page that has an h1 that has a string in it and a link to a page that has
            all of the dealerships 

    - cars folder 
        -show.html.erb 
            this is showing a link to test drive that specfic car (wile interpolating its name )
            then there is another link to to go back and see a dealerships interventory (ik its spelled wrong)

    -dealership folder 
        -index.html.erb
            there is an h1 rag that just says list of dealership, then im taking dealership im saying for every dealership do something (d)
            link to said(d) dealership and it accioated path so when you click on that dealership you gonna go there 
        -show.html.erb 
            show the dealership name in the h1 tag then im asking for cars but im accessing thoes cars through dealership. I dont want all of thoes cars i want thoes specfic cars of that dealership. then for im linking that car and the assoicated path for it and finally at the end i wanted a link to go back to the list of dealerships so the user(coustomer) has a path back 

    -test_drives folder
        -new.html.erb
            this has an h1 tag that says basiclly what is the test drive date gonna be. then we get a little harry. I know that you should either do hidden feild or fourm for but beacuse i had messed up my naming conventtions i had to do some stuff manually. specifally i had to set car_id to the varible to car id but after that its pretty standard issue from there. im using date select and a submit button finally there is a link to see that car again and its associated path 
        -show.html.erb 
            this has 2 header tags on that interpolates the car that you have selcted for a testdrive then in the second tag it displays the the test drive that you have selected date.    

