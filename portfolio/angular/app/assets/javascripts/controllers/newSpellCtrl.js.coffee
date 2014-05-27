@NewSpellCtrl = ($scope, $location, spellData) ->
  $scope.data = spellData.data
  spellData.loadSpells(null)

  $scope.formData =
    newSpellName: ""
    newSpellEffect: ""

  $scope.createSpell = ->
    console.log $scope.formData
    spellData.createSpell($scope.formData)
    $scope.returnHome()

  $scope.returnHome = ->
    $location.url "/"