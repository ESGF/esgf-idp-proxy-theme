<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true displayRequiredFields=false displayWide=false showAnotherWayIfPresent=true>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">

        <title><#nested "header"></title>

        <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- Bootstrap -->
        <link href="${url.resourcesPath}/css/bootstrap.min.css" rel="stylesheet">
        <!-- Site specific style customisation -->
        <link href="${url.resourcesPath}/css/login.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="${url.resourcesPath}/fontawesome/css/all.css" rel="stylesheet">
    </head>

    <body id="body">
        <!--<div class="branding d-flex justify-content-center">
            <img src="${url.resourcesPath}/img/esgf-logo.png" class="logo img-fluid" alt="Logo">
        </div>-->
        <div class="container-fluid">
            <div class="row">
                <div class="branding mx-auto d-block">
                    <img src="${url.resourcesPath}/img/esgf-logo.png" class="img-fluid logo" alt="Logo">
                </div>
            </div>
            <#nested "content">
        </div>

        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    </body>

</html>
</#macro>
