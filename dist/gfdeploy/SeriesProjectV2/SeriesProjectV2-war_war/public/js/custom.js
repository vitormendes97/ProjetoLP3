$(document).ready(function(){
    $("#settings").click(function(){
        $('.modal-trigger').leanModal();
    });
});


function toggleReadOnly(){
    document.getElementById("nome").readOnly = false;
    document.getElementById("celular").readOnly = false;
    document.getElementById("email").readOnly = false;
    document.getElementById("senha").readOnly = false;
    document.getElementById("senha").type = "text";
    document.getElementById("datanasc").readOnly = false;
}