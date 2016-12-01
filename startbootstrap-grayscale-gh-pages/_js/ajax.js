
$(document).ready(function () {
    $("form#produit").submit(function() {
        var lib           = $('#lib').attr('value');
        var tarif         = $('#tarif').attr('value');


        $.ajax({
            type: "POST",
            url: "action.php",
            data: "&lib="+ lib + "&tarif=" + tarif,
            success: result,
            dataType: "json"
            });
        return false;
    });
});

function result(data){

    var resultat = '<p>Résultat :&nbsp; Produit <b>'+data.lib+'</b> Tarif : <b>'+
                    data.tarif+"</b><br /></p>";

    $('form#produit').hide();
    $('div#success').fadeIn("slow");
    $('div#success').append(resultat);

}
