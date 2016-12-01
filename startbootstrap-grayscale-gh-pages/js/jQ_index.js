// Masquer les onglets et les boutons navbar
jQuery('#onglet_compte').hide();
jQuery('#onglet_recharge').hide();
jQuery('#choix_class').hide();
jQuery('#list_elev').hide();
jQuery('#tarifs').hide();
jQuery('#compte').hide();
jQuery('#rechargement').hide();
jQuery('#ins').hide();
jQuery('#inscriptions').hide();
jQuery('#contenu_recharge').hide();

// afficher Onglet tarifs (navbar)
jQuery('#navtarifs').click(function()
                           {
    jQuery('#intro').hide();
    jQuery('#tarifs').show(200);
    jQuery('#compte').hide();
    jQuery('#rechargement').hide();
    jQuery('#ins').hide();
    jQuery('#inscriptions').hide();
});

// afficher Onglet compte (navbar)
jQuery('#navcompte').click(function()
                           {
    jQuery('#intro').hide();
    jQuery('#tarifs').hide();
    jQuery('#compte').show(200);
    jQuery('#div_elev').hide();
    jQuery('#div_info').hide();
    jQuery('#div_fidchbx').hide();
    jQuery('#div_histchbx').hide();
    jQuery('#div_credchbx').hide();
    jQuery('#rechargement').hide();
    jQuery('#ins').hide();
    jQuery('#inscriptions').hide();
});

// afficher Onglet rechargement (navbar)
jQuery('#navrechargement').click(function()
                                 {
    jQuery('#intro').hide();
    jQuery('#tarifs').hide();
    jQuery('#compte').hide();
    jQuery('#rechargement').show(200);
    jQuery('#contenu_recharge').hide();
    jQuery('#ins').hide();
    jQuery('#inscriptions').hide();
});

// afficher Onglet Inscrits (navbar)
jQuery('#navins').click(function()
                        {
    jQuery('#intro').hide();
    jQuery('#tarifs').hide();
    jQuery('#compte').hide();
    jQuery('#rechargement').hide();
    jQuery('#ins').show(200);
    jQuery('#inscriptions').hide();
});

// afficher Onglet tarifs (accueil)
jQuery('#otarifs').click(function()
                         {
    jQuery('#intro').hide();
    jQuery('#tarifs').show(200);
    jQuery('#compte').hide();
    jQuery('#rechargement').hide();
    jQuery('#ins').hide();
    jQuery('#inscriptions').hide();
});

// afficher Onglet compte (accueil)
jQuery('#ocompte').click(function()
                         {
    jQuery('#intro').hide();
    jQuery('#tarifs').hide();
    jQuery('#compte').show(200);
    jQuery('#div_elev').hide();
    jQuery('#div_info').hide();
    jQuery('#div_fidchbx').hide();
    jQuery('#div_histchbx').hide();
    jQuery('#div_credchbx').hide();
    jQuery('#rechargement').hide();
    jQuery('#ins').hide();
    jQuery('#inscriptions').hide();
});


// afficher contenu page compte
jQuery('#btn_rech').click(function()
                          {
    jQuery('#div_elev').show();
    jQuery('#div_info').show();
    jQuery('#div_fidchbx').show();
    jQuery('#div_histchbx').show();
    jQuery('#div_credchbx').show();
});

// afficher contenu page rechargement
jQuery('#btn_recharge').click(function()
                              {
    jQuery('#contenu_recharge').show();
});

// afficher Onglet rechargement (accueil)
jQuery('#orechargement').click(function()
                               {
    jQuery('#intro').hide();
    jQuery('#tarifs').hide();
    jQuery('#compte').hide();
    jQuery('#rechargement').show(200);
    jQuery('#contenu_recharge').hide();
    jQuery('#ins').hide();
    jQuery('#inscriptions').hide();
});

// afficher Onglet inscrits (accueil)
jQuery('#oins').click(function()
                      {
    jQuery('#intro').hide();
    jQuery('#tarifs').hide();
    jQuery('#compte').hide();
    jQuery('#rechargement').hide();
    jQuery('#ins').show(200);
    jQuery('#inscriptions').show(200);
});

//liste déroulante navbar
var timerIn = 200;
var timerOut = 200;
$('ul.nav li.dropdown').hover(function() {
    $(this).find('> .dropdown-menu').stop(true, true).fadeIn(timerIn);
    $(this).addClass('open');
}, function() {
    $(this).find('> .dropdown-menu').stop(true, true).fadeOut(timerOut);
    $(this).removeClass('open');
});

// bouton valider et bouton retour partie Inscrits
jQuery('#valid_inscrits').click(function()
                                {
    jQuery('#inscription').hide(200);
    jQuery('#choix_regime').hide();
    jQuery('#choix_class').show();
    jQuery('#list_elev').show();
    return false;
});

jQuery('#retour_inscrits').click(function()
                                 {
    jQuery('#inscription').show();
    jQuery('#choix_regime').show();
    jQuery('#choix_class').hide();
    jQuery('#list_elev').hide();
    return false;
});

//Bouton retour des onglets
jQuery('#retour_tarifs').click(function()
                               {
    jQuery('#intro').show();
    jQuery('#tarifs').hide();
    jQuery('#compte').hide();
    jQuery('#rechargement').hide();
    jQuery('#ins').hide();
    jQuery('#inscriptions').hide();
});

jQuery('#retour_recharge').click(function()
                                 {
    jQuery('#intro').show();
    jQuery('#tarifs').hide();
    jQuery('#compte').hide();
    jQuery('#rechargement').hide();
    jQuery('#ins').hide();
    jQuery('#inscriptions').hide();
});

jQuery('#retour_ins').click(function()
                            {
    jQuery('#intro').show();
    jQuery('#tarifs').hide();
    jQuery('#compte').hide();
    jQuery('#rechargement').hide();
    jQuery('#ins').hide();
    jQuery('#inscriptions').hide();
});