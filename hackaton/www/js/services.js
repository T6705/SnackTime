angular.module('starter.services', [])

.factory('productFactory', function() {
    var product
    return {
        all: function() {
            return product;
        },
        get: function(var1) {
            product = var1;
        }
    };
});
