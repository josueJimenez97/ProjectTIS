$(document).ready(function(){
    bandera=0;
    $(function() {
        $('#usuario').on('keypress', function(e) {
            if (e.which == 32)
                return false;
        });
        $('#contraseña').on('keypress', function(e) {
            if (e.which == 32)
                return false;
        });

    });
	$("#btene").click(function(){
		if($("#usuario").val()==""){
            $("#alerta-nombre").css("color","#cb3234");
            $("#usuario").val("").focus();
            bandera=1;
        }
        else{
            $("#alerta-nombre").css("color","transparent");
            bandera=0;
        }
         if($("#contraseña").val()==""){
            $("#alerta-contraseña").css("color","#cb3234");
			//("#pass").val("").focus();
            bandera=1;
        }
        else{
            $("#alerta-contraseña").css("color","transparent");
            bandera=0; 
        }
        if(bandera==1)
        return false;
        else
        return false;
        });
       
});