@IndexCtrl = ($scope, $location, $http, spellData) ->
  $scope.title = "I am a wizard"
  $scope.data = spellData.data

  $scope.viewSpell = (spellId) ->
    console.log "Shake yo abacus"
    $location.url("/spells/#{spellId}")

  $scope.createNewSpell = ->
    $location.url("/spells/new")

  spellData.loadSpells(null)