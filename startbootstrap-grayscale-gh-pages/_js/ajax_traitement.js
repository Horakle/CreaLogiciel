$(document).ready(function () {
    $("#comp :checkbox").change(function () {
        var nomenclature             = $(this).attr('name');
        var idppe                    = $('#idppe').attr('value');
        var checked                  = $(this).attr('checked');
        if(checked==true){
            var checked = 1;
        }
        else{
            var checked = 0;
        }

        $.ajax({
            type: "POST",
            url: "traitement_modifier_competence.php",
            data: "&nomenclature=" + nomenclature + "&idppe=" + idppe + "&checked=" + checked,
            success: result,
            dataType: "json"
        });
        return false;
    });
});



function result(data){

    $("form").hide();

}

function resultat(data){

    $("form").hide();

}

function resulte(data){

    $('form#ajout').hide();
    $('div#success').fadeIn("slow");
    $('div#success').append(resultat);
    alert('Votre ligne a bien était inséré !');

}

