@SpellCtrl = ($scope, $location, $routeParams, spellData, $q) ->
  $scope.data =
    spellData: spellData.data
    currentSpell:
      name: "Wait while the spell materializes..."
      effect: ""

  $scope.data.spellId = $routeParams.spellId
  $scope.title = "Cauldron"

  $scope.returnHome = ->
    console.log "A doggy"
    $location.url("/")

  $scope.findSpellbyId = ->
    spell = _.findWhere(spellData.data.spells, { id: parseInt($scope.data.spellId) })
    $scope.data.currentSpell.name = spell.name
    $scope.data.currentSpell.effect = spell.effect

  $scope.editSpell = ->
    $location.url("/spells/#{$scope.data.spellId}/edit")

  $scope.deleteSpell = ->
    spellData.deleteSpell($scope.data.spellId)
    $location.url("/")
    

  @deferred = $q.defer()
  @deferred.promise.then($scope.findSpellById)
  spellData.loadSpells(@deferred)