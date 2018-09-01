// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require activestorage
//= require turbolinks
//= require_tree .
 
//= require popper
//= require bootstrap 
let form;
 
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }

  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }

  let extract = ()=>{
    let lName = document.getElementById("first-name")
   
    console.log(lName)
    let last_name = document.getElementById("last_name")
    let age = document.getElementById("age")
     
    let cId = document.getElementById("cohort_id") 
    var opt = cId.options[cId.selectedIndex];

    let rlName = document.getElementById("rfirst-name")
    let rlast_name = document.getElementById("rlast_name")
    let rage = document.getElementById("rage")
    let rcId = $("#rcohort_id")
    if(lName.value.length > 0){ rlName.value = lName.value;}
   if(last_name.value.length > 0){
    rlast_name.value = last_name.value

   }
   
  //  console.log("is !!!!!!" + opt.value )
   console.log("is !!!!!!" + opt.text )
   
    $('#sub').click()
  }