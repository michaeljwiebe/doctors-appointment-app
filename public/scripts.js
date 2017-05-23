var makeApt = document.getElementsByClassName("aptBtn")[0];
var doctor = document.getElementsByClassName("doctor")[0];
var userId = document.getElementsByClassName("userId")[0];
var time = document.getElementsByClassName("time")[0];
var reason = document.getElementsByClassName("reason")[0];
var local = document.getElementsByClassName("location")[0];

makeApt.addEventListener("click", makeAppointment)

function makeAppointment(){
    $.ajax({
        method: "POST",
        url: "/make_apt",
        dataType: 'json',
        data:{
            user_id: userId.value,
            doctor_id: doctor.value,
            time: time.value,
            reason: reason.value,
            location: local.value
        },
        success: function(response){
            console.log(response);
        }
    })
}
