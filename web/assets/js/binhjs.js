/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function CheckData() {
    var fullname = document.getElementById("Fullname").value;
    var dateofbirth = document.getElementById("DateofBirth").value;
    var email = document.getElementById("Email").value;
    var phone = document.getElementById("Phone").value;
    var username = document.getElementById("Username").value;
    var password = document.getElementById("Password").value;
   
    if (fullname === '') {
//      document.getElementById("YourName").setCustomValidity('Please enter Your name');
        alert("Please enter your fullname");
        return false;
    }


    if (dateofbirth === '') {
//        document.getElementById("DateofBirth").setCustomValidity('Please enter Date of Birth');
        alert('Please enter Date of Birth');
        return false;
    } else
    {
        var now = new Date();
        var currentYear = now.getFullYear();
        var birthday = new Date(dateofbirth);
        var year = birthday.getFullYear();
        var age = currentYear - year + 1;
        if (age < 18) {
//             document.getElementById("DateofBirth").setCustomValidity('Your age < 18 year old!');
            alert('Your age < 18 year old!');
            return false;
        }

    }

    if (email === '') {
//        document.getElementById("Email").setCustomValidity('Please enter your email');
        alert('Please enter your email');
        return false;
    }

    if (phone === '') {
//        document.getElementById("Email").setCustomValidity('Please enter your email');
        alert('Please enter your phone');
        return false;
    } else
    {
        var phoneno = /^\d{10}$|^\d{11}$/;
        if (!phone.match(phoneno))
        {
            alert("Please enter phone 10 or 11 number");
            return false;
        }
    }
    if (username === '') {
//      document.getElementById("YourName").setCustomValidity('Please enter Your name');
        alert("Please enter Username");
        return false;
    }
    if (password === '' || password.length < 4) {
//         document.getElementById("Password").setCustomValidity('Please enter your password >= 8 characters!');
        alert('Please enter your password >= 8 characters!');
        return false;
    }
    return true;
}