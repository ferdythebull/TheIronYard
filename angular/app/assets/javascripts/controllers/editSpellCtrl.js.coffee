@EditPostCtrl = ($scope, $routeParams, spellData, $q, $location) ->
  console.log = "Hey, Me."

  $scope.data =
    spellData: spellData.data
    currentSpell:
      name: "Currently brewing..."
      effect: ""

  $scope.data.spellId = $routeParams.spellId

  $scope.formData =
    editSpellName: ""
    editSpellEffect: ""
    editSpellId: $routeParams.spellId

  $scope.findSpellById = ->
    spell = _.findWhere(spellData.data.spells, { id: parseInt($scope.data.spellId) })
    $scope.data.currentSpell.name = spell.name
    $scope.data.currentSpell.effect = spell.effect
    $scope.formData.editSpellName = spell.name
    $scope.formData.editSpellEffect = spell.effect

    $scope.editSpell = ->
      console.log "edit spell"
      spellData.updateSpell ($scope.formData)
      $scope.returnHome()

    $scope.returnHome = ->
      $location.url '/'

  @deferred = $q.defer()
  @deferred.promise.then($scope.findSpellById)
  spellData.loadSpells(@deferred)