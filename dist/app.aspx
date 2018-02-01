<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Code review</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />
    <link rel="stylesheet" href="style.css">
    
</head>
<body ng-app="app" ng-controller="codeReviewController as vm">
    <div class="page-header">
        <h1 class="jumbotron text-center" ng-cloak>Code Reviews. Week {{vm.weeknumber}}</h1>
    </div>
    
    <div class="container"> 
        <div class="btn-container">
            <button class="btn btn-default" ng-click="vm.pair()">New pairs</button>
            <button class="btn btn-primary" ng-click="vm.save()">Save the pairs</button>
        </div>
        <div ng-show="vm.loading" class="sk-cube-grid">
            <div class="sk-cube sk-cube1"></div>
            <div class="sk-cube sk-cube2"></div>
            <div class="sk-cube sk-cube3"></div>
            <div class="sk-cube sk-cube4"></div>
            <div class="sk-cube sk-cube5"></div>
            <div class="sk-cube sk-cube6"></div>
            <div class="sk-cube sk-cube7"></div>
            <div class="sk-cube sk-cube8"></div>
            <div class="sk-cube sk-cube9"></div>
            </div>
        <ul class="list-group" ng-show="!vm.loading">
            <li class="list-group-item" ng-cloak ng-repeat="pair in vm.pairs">{{pair.reviewer}} <i class='fa fa-arrow-right'></i> {{pair.receiver}}</li>
        </ul>

        <div class="btn-container">
            <button class="btn btn-default" ng-click="vm.pair()">New pairs</button>
            <button class="btn btn-primary" ng-click="vm.save()">Save the pairs</button>
        </div>

        <div class="panel panel-default">
            <div class="panel-body">Source code: <a href="https://github.com/Zerg00s/codeReviewRandomizer">GitHub</a></div>
        </div>


    </div>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.5/angular-animate.min.js"></script>
    <script src="sp.service.js?ver=1"></script>
    <script src="app.js?ver=1"></script>
</body>
</html>



