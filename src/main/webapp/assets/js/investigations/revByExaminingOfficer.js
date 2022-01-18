'use strict';
$(document).ready(function() {

    const form = $("#revByExaminingOfficerForm").show();


    form.steps({
        headerTag: "h3",
        bodyTag: "fieldset",
        transitionEffect: "slideLeft",
    })

});





function addMainServerResponse(htmlString) {
    $("#mainServerResponse").html('');
    $("#mainServerResponse").html(htmlString);
}


$(document).ready(function(){

    /*** approval *******************************************************/
    var approveBtn = $('#approveBtn');

    var refNumber =  $('#refNumber').val();

    console.log(refNumber)
    /***save approval *********************************************/
    approveBtn.on('click', function () {
        swal({
            title : "Are you sure?",
            text : "You wish to approve the allegation",
            showCancelButton : true,
            confirmButtonClass : "btn-danger",
            confirmButtonText : "Yes",
            closeOnConfirm : false
        }, function() {
            $(".confirm").attr('disabled', 'disabled');
            revByExamOfficerFucntion(refNumber);
        });
    })

    //Saving function for the review
    function revByExamOfficerFucntion(refNumber) {

        if ($('#revByExaminingOfficerForm')[0].checkValidity()){
            var formData = new FormData($('#revByExaminingOfficerForm')[0]);


            console.log(refNumber)

            formData.append("refNumber", refNumber);

            $.ajax({
                type: 'POST',
                url: 'investigations/saveRevByExaminingOfficer',
                data: formData,
                dataType: 'json',
                processData: false,
                contentType: false,
                cache: false,
                success: function (response) {
                    //do stuff here for the view
                    if (response.status === "error") {
                        let message = response.message;
                        swal({
                            title: "Error !",
                            text: message,
                            type: "error",
                            showCancelButton: false,
                            confirmButtonClass: "btn-primary",
                            confirmButtonText: "OK",
                            closeOnConfirm: true
                        }, function () {

                        });
                    } else if (response.status === "success") {
                        swal({
                            title: "Success",
                            text: response.message,
                            type: "success",
                            showCancelButton: false,
                            confirmButtonClass: "btn-primary",
                            confirmButtonText: "OK",
                            closeOnConfirm: true
                        }, function () {
                            window.location.href = 'darshBoard';
                        });
                    }
                },
                error: function () {
                    swal("Error!", "Error occurred executing action: Contact system admin", "error");
                }
            });
        }else {
            $('#revByExaminingOfficerForm')[0].reportValidity();
        }
    }




    var sendBackBtn = $('#sendBackBtn');

    /***SendBack *************************************************************/
    sendBackBtn.on('click', function () {
        swal({
            title : "Are you sure?",
            text : "You want to send the task back",
            showCancelButton : true,
            confirmButtonClass : "btn-danger",
            confirmButtonText : "Yes",
            closeOnConfirm : false
        }, function() {
            sendBackFunction();
        });
    })

    //Saving function for the rejection
    function sendBackFunction() {

        if ($('#revByExaminingOfficerForm')[0].checkValidity()){
            var formData = new FormData($('#revByExaminingOfficerForm')[0]);

            //formData.append("usersComments", userComment);

            $.ajax({
                type: 'POST',
                url: 'investigations/sendBackByExaminingOfficer',
                data: formData,
                dataType: 'json',
                processData: false,
                contentType: false,
                cache: false,
                success: function (response) {
                    //do stuff here for the view
                    if (response.status === "error") {
                        let message = response.message;
                        swal({
                            title: "Error !",
                            text: message,
                            type: "error",
                            showCancelButton: false,
                            confirmButtonClass: "btn-primary",
                            confirmButtonText: "OK",
                            closeOnConfirm: true
                        }, function () {

                        });
                    } else if (response.status === "success") {
                        swal({
                            title: "Success",
                            text: response.message,
                            type: "success",
                            showCancelButton: false,
                            confirmButtonClass: "btn-primary",
                            confirmButtonText: "OK",
                            closeOnConfirm: true
                        }, function () {
                            window.location.href = 'darshBoard';
                        });
                    }
                },
                error: function () {
                    swal("Error!", "Error occurred executing action: Contact system admin", "error");
                }
            });
        }else {
            $('#revByExaminingOfficerForm')[0].reportValidity();
        }
    }




    function showServerMessageAdd(responseObj){
        $(".approvalServerResponse").html(responseObj.message);
        $(".approvalServerResponse").fadeIn(300);
        $(".approvalServerResponse").fadeOut(300);
        $(".approvalServerResponse").fadeIn(300);
        $(".approvalServerResponse").fadeOut(3000);
    }

});
