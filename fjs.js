// After form loads focus will go to User id field.
function firstfocus()
{
var uid = document.registration.User_Name.focus();
return true;
}

// This function will validate User id.
//allletters
function username_validation()
{

var uname = document.registration.User_Name;
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
// Focus goes to next field i.e. Address.
document.registration.User_Desc.focus();

return true;
}
else
{
alert('Username must have alphabet characters only');
User_Name.focus();
return false;
}
}
///user description
function user_desc()
{

var uname = document.registration.User_Desc;
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
// Focus goes to next field i.e. Address.
document.registration.email.focus();
return true;
}
else
{
alert('Username must have alphabet characters only');
email.focus();
return false;
}
}
//emailvalidation
function ValidateEmail()
{
var uemail = document.registration.email;
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(uemail.value.match(mailformat))
{
document.registration.password.focus();
return true;
}
else
{
alert("You have entered an invalid email address!");
email.focus();
return false;
}
}


// This function will validate Password.


function passid_validation(mx,my)
{
var passid = document.registration.password;
var passid_len = password.value.length;
if (passid_len == 0 ||passid_len >= my || passid_len < mx)
{
alert("Password should not be empty / length be between "+mx+" to "+my);
password.focus();
return false;
}
// Focus goes to next field i.e. Name.
document.registration.Dept.focus();
return true;
}

// This function will validate Name.
function Dept_validation()
{ 
var uname = document.registration.Dept;
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
// Focus goes to next field i.e. Address.
document.registration.Phone.focus();
return true;
}
else
{
alert('Username must have alphabet characters only');
Dept.focus();
return false;
}
}



// This function will validate phone Code.
function Phone_validation()
{ 
var uzip = document.registration.Phone;
var numbers = /^[0-9]+$/;
if(uzip.value.match(numbers))
{
// Focus goes to next field i.e. email.
document.registration.Library_Name.focus();
return true;
}
else
{
alert('ZIP code must have numeric characters only');
Phone.focus();
return false;
}
}

// This function will Library name Email.
function Libraryname_validation()
{ 
var uname = document.registration.Library_Name;
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
// Focus goes to next field i.e. Address.
document.registration.Phone.focus();
return true;
}
else
{
alert('Library Name must have alphabet characters only');

return false;
}
}

 