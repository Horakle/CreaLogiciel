<html>
    <head>
        <meta charset="utf-8">
        <title>Page Client</title>

        <!-- CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="css/page_cli.css" rel="stylesheet" type="text/css">

    </head>

    <body>
        <form class="form-horizontal">
            <fieldset>

                <!-- Nom du Formulaire + Style -->
                <center style="font-size:200%;">Clients</center>
                <br>

                <!-- Barre de recherche + bouton -->
                <div class="form-group">
                    <label class="col-lg-4 control-label"></label> 
                    <div class="col-lg-3">
                        <input id="recherche" name="recherche" placeholder="Nom Prénom" class="form-control input-md" type="text">
                        <a href="#" class="btn btn-primary btn-danger"><span class="fa fa-search"></span> Rechercher</a>
                        </div>
                    </div>

                    <!-- Affichage du Nom et du Prénom -->
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="nom">Nom :</label>

                        <label class="col-lg-2 control-label" for="prenom">Prenom :</label>
                        <label class="col-lg-3 control-label">Photo :</label>
                        <img src="img/photo_elev.png" style="width:100px; height:150px;">
                    </div>

                    <!-- Liste déroulante pour le régime + Affichage du Solde -->
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="regime">Régime</label>
                        <div class="col-lg-1">
                            <select id="regime" name="regime" class="form-control">
                                <option value="int">Interne</option>
                                <option value="dp">Demi-Pensionnaire</option>
                                <option value="ext">Externe</option>
                            </select>
                        </div>

                        <label class="col-lg-1 control-label" for="solde">Solde :</label>
                    </div>

                    <!-- Checkboxe Fidélisé -->
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="fid_chbx"></label>
                        <div class="col-lg-4">
                            <div class="checkbox">
                                <label for="fid_chbx-0">
                                    <input name="fid_chbx" id="fid_chbx" value="fid" type="checkbox">
                                    Fidélisé
                                </label>
                            </div>
                        </div>
                    </div>

                    <!-- Checkboxe Historique -->
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="hist_chbx"></label>
                        <div class="col-lg-4">
                            <div class="checkbox">
                                <label for="hist_chbx-0">
                                    <input name="hist_chbx" id="hist_chbx" value="hist" type="checkbox">
                                    Historique
                                </label>
                            </div>
                        </div>
                    </div>

                    <!-- Checkboxe Crédit -->
                    <div class="form-group">
                        <label class="col-lg-3 control-label" for="hist_chbx"></label>
                        <div class="col-lg-4">
                            <div class="checkbox">
                                <label for="hist_chbx-0">
                                    <input name="cred_chbx" id="cred_chbx" value="hist" type="checkbox">
                                    Crédit
                                </label>
                            </div>
                        </div>
                    </div>

                    </fieldset>
                </form>


            </body>

        <script src="startbootstrap-grayscale-gh-pages/_js/jquery-1.3.2.js">
            jQuery('#tab_fid').hide();
            jQuery('#tab_hist').hide();
            jQuery('#contenu').hide();

            jQuery('#box_fid').click(function()
                                     {
                jQuery('#tab_fid').show();
            });

            jQuery('#box_hist').click(function()
                                      {
                jQuery('#tab_hist')
            });

        </script>
        </html>
