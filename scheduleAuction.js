
window.addEventListener('load',function()
{
    alert("window is loading..Click OK.");
    var date = new Date();
    var checkDate = new Date();
    checkDate.setDate(date.getDate() + 3);


    var day = date.getDate();
    var month = date.getMonth() + 1;
    var year = date.getFullYear();
    if (month < 10) month = "0" + month;
    if (day < 10) day = "0" + day;
    var today = year + "-" + month + "-" + day;
    document.getElementById("bidstartdate").value = today ;
    console.log(document.getElementById("bidstartdate").value);


    var checkday = checkDate.getDate();
    var checkmonth = checkDate.getMonth() + 1;
    var checkyear = checkDate.getFullYear();
    if (checkmonth < 10) checkmonth = "0" + checkmonth;
    if (checkday < 10) checkday = "0" + checkday;
    var checkdatetoday = checkyear + "-" + checkmonth + "-" + checkday;



    document.getElementById("bidstartdate").addEventListener("change", function() {
        var dates = this.value;
        var startDateEntered = new Date(dates);
        console.log(dates);
        console.log(startDateEntered);
    });


    document.getElementById("bidenddate").addEventListener("change", function() {
        var datef = this.value;
        var dateEntered = new Date(datef);
        console.log(datef);
        console.log(dateEntered);
        var dayf = dateEntered.getDate() + 1;
        var monthf = dateEntered.getMonth() + 1;
        var yearf = dateEntered.getFullYear();
        if (monthf < 10) monthf = "0" + monthf;
        if (dayf < 10) dayf = "0" + dayf;
        var todayf = yearf + "-" + monthf + "-" + dayf;
        console.log(todayf);
        console.log(document.getElementById('bidenddate').value = todayf);
    });


    document.querySelector("body > div.container > form > div > button").addEventListener('click',
        function()
        {
            var bidStartDate =  document.getElementById('bidstartdate').value;
            var bidEndDate = document.getElementById('bidenddate').value;
            console.log(bidEndDate);
            console.log(bidStartDate);
            const diffInMs   = new Date(bidEndDate) - new Date( bidStartDate)
            const diffInDays = diffInMs / (1000 * 60 * 60 * 24);
            console.log(diffInDays);
            if((diffInDays>3)||(bidEndDate<bidStartDate))
            {
                alert("enter a different date");
                document.getElementById("bidenddate").value = "";

            }

        });
});


