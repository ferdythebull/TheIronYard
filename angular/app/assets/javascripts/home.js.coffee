#= require_self
#= require_tree ./services
#= require_tree ./controllers
#= require_tree ./directives
#= require_tree ./filters

Cauldron = angular.module("Cauldron", ['ngRoute'])

Cauldron.config(["$routeProvider", ($routeProvider) ->
  $routeProvider.when('/spells/new', {templateUrl: '../assets/newSpell.html', controller: "NewSpellCtrl"})
  $routeProvider.when('/spells/:spellId', { templateUrl: "../assets/spell.html", controller: "SpellCtrl"})
  $routeProvider.when('/spells/:spellId/edit, { templateUrl: "../assets/editSpell.html', controller: "EditSpellCtrl")

  $routeProvider.otherwise({ templateUrl: '../assets/index.html', controller: "IndexCtrl"})
])

Cauldron.config(['$httpProvider', (provider) ->
  provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
])