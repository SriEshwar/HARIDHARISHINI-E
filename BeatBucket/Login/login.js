const user=document.getElementById("loginEmail")
const password = document.getElementById("loginPassword")

if(user===password){
    window.location.href='HomeIndex.html'
}
else{
    alert("Enter the correct password")
}

