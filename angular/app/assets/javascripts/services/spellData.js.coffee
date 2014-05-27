angular.module("Cauldron").factory("spellData", ['$http', ($http) ->
  spellData =
    data:
      spells: [
        {
          name: "Currently brewing the tincture...",
          effect: ""
        }
      ]
    isLoaded: false

  spellData.loadSpells = (deferred) ->
    if spellData.isLoaded == false
      $http.get('/spells.json').success( (data) ->
        spellData.data.spells = data
        spellData.isLoaded = true
        console.log "We have brewed our potion."
        if deferred
          deferred.resolve()
      ).error( ->
        console.log "The potion has blown up in your face."
        if deferred
          deferred.reject "Deferred."
      )
    else
      if deferred
        deferred.resolve()

  spellData.createSpell = (formData) ->
    data =
      spell:
        name: formData.newSpellName
        effect: formData.newSpellEffect

    $http.post('/spells.json', data).success( (data) ->
      spellData.data.spells.push(data)
      console.log("You've brewed your potion quite well.")
    ).error( ->
        console.log("This potion is a ruin.")
    )

    return true

  spellData.updateSpell = (formData) ->
    console.log "Grumphahumpf"
    data =
      spell:
        name: formData.editSpellName
        effect: formData.editSpellEffect

    $http.put("/spells/#{formData.editSpellId}.json", data).success( (data) ->
      console.log("The spell has been amended.")
      spell = _.findWhere( spellData.data.spells, { id: parseInt(formData.editSpellId)})
      spell.name = data.name
      spell.effect = data.effect
    ).error( ->
      console.log("The spell could not amend.")
    )

  spellData.deleteSpell = (spellId) ->
    $http.delete("/spells/#{spellId}.json").success( (data) ->
      console.log("You have removed this spell from the books.")
      spell = _.findWhere( spellData.data.spells, { id: parseInt(spellId)})
      spellData.data.spells = _.without(spellData.data.spells, spell)
      ).error(
        console.log("You could not remove this spell.")
      )

  spellData.findSpellById = (spellId) ->
    console.log spellId
    console.log spellData.data.spells
    test = _.findWhere(spellData.data.spells, { id: parseInt(spellId) }
    )
    console.log(test)
    return test

  console.log "j00 h4v3 unc0v3r3d D474"

  return spellData
])