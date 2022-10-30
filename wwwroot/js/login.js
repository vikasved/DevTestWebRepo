$("#btnLogin").on("click", function () {
    var email = $("#txtEmail").val();
    var pass = $("#txtPass").val();

    var emailregex = /\S+@\S+\.\S+/;

    if (emailregex.test(email)) {
        $.ajax({
            url: "/Home/Login",
            type: "POST",
            data: {
                _email: email,
                _pass: pass
            },
            success: function (response) {
                console.log(response);
                if (response == true) {
                    alert("user logged in successfully");
                    window.location = "/Home/CarInfo";
                }
                else {
                    alert("There is some error in login");
                }
            },
            error: function (response) {
                alert("Please enter valid email address and password");
            }
        });
    }
    else {
        alert("Please enter valid email address");
    }
});

$("#btnSaveCarInfo").on("click", function () {
    debugger;
    var brand = $("#selBrand").val();
    var model = $("#selModel").val();
    var carname = $("#txtCarName").val();
    var price = $("#txtPrice").val();
    var newcar = $('input[name="new"]:checked').val();

    var validcarname = /^[A-Za-z]+$/;
    var validprice = /^([1-9]\d{1}([0-9]\d*))(\.\d{1,2})?$/;

    if (validcarname.test(carname) && validprice.test(price)) {
            $.ajax({
            url: "/Home/CarInfoSave",
            type: "POST",
            data: {
                _brand: brand,
                _model: model,
                _carname: carname,
                _price: price,
                _newcar: newcar
            },
                success: function (response) {
                console.log(response);
                if (response == true) {
                    alert("Data submitted successfully");
                    window.location = "/Home/ShowCarDetails";
                }
                else {
                    alert("There is some error in submitting data");
                }
            },
            error: function (response) {
                alert("Please enter valid car details");
            }
        });
    }
    else {
        alert("please check your entered data");
    }
});         