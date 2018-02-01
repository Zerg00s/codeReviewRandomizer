(function() {
    'use strict';

    angular.module('app', [
        'sp.service',
        'ngAnimate'
    ]);
    angular.module('app')   
        .controller('codeReviewController', codeReviewController);

    codeReviewController.$inject = ['$http', 'sp'];
    function codeReviewController($http, sp) {
        var vm = this;
        vm.loading = true;

        vm.weeknumber = moment(new Date(), "MM-DD-YYYY").week();


        var systemStorage = sp.getSystemStorage('CodeReview');
        systemStorage.get('CatalogSettings').then(function(storageData){
            vm.pairs = storageData;
            vm.loading = false;
        });

        systemStorage.ensureStorage();
        

        vm.people = ['Denis', 'Suthan', 'Harpreet', 'Kevin', 'Jan', 'Ruby', 'Hasan'];

        vm.pair = function(){
            vm.pairs = pair(vm.people);
        }

        vm.save = function(){
            systemStorage.put('CatalogSettings', vm.pairs)
            .then(function(){
                toastr["success"]("Success", "Pairs saved!")

            });
        }

        function pair(arr) {
            var result = [];
            var recipients = arr.slice();
            var len = arr.length;
            for (var i = 0; i < len; i++) {
                var reviewer = arr[i];		
                var recipientIndex = Math.floor(Math.random() * recipients.length);
                var counter = 0;
                while (recipients[recipientIndex] === reviewer) {
                    // Can't review  myself
                    recipientIndex = Math.floor(Math.random() * recipients.length);
                    if(counter > 180){
                        // dead end, start anew:
                        return pair(arr);
                    }
                    counter++;
                }
                var recipient = recipients.splice(recipientIndex, 1)[0];
                result.push({
                reviewer: reviewer,
                receiver: recipient
                });
            }
            return result;
        };
        
    }
})();




