/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function confirmAction(){
    return confirm("Do you want to delete?");
}
function Sendata(){
    var selectCat = document.getElementById('catID');
    var selectCourse = document.getElementById('courseID');
    var categoryID=selectCat.options[selectCat.selectedIndex].value;
    var courseID=selectCourse.options[selectCourse.selectedIndex].value;
    var path=document.getElementById("path").value;
    path+=categoryID;
    path+="&courseID="+courseID;
//    document.write(path);
    document.myform.action=path;
    document.myform.submit();
}


function SendataCourse(){
    var select = document.getElementById('courseID');
    var courseID=select.options[select.selectedIndex].value;
    var path=document.getElementById("path").value;
    path+=courseID;
//    document.write(path);
    document.myform.action=path;
    document.myform.submit();
}

function AdminCheckData() {
    var fullname = document.getElementById("Fullname").value;
    var dateofbirth = document.getElementById("DateofBirth").value;
    var address = document.getElementById("Address").value;
    var phone = document.getElementById("Phone").value;
    var username = document.getElementById("Username").value;
    var password = document.getElementById("Password").value;
   
    if (fullname === '') {

        alert("Please enter your fullname");
        return false;
    }


    if (dateofbirth === '') {

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
            alert('Your age < 18 year old!');
            return false;
        }

    }

    if (address === '') {

        alert('Please enter address');
        return false;
    }

    if (phone === '') {

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
        alert("Please enter Username");
        return false;
    }
    if (password === '' || password.length < 4) {
        alert('Please enter your password >= 8 characters!');
        return false;
    }
    return true;
}
    
