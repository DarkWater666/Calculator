$ ->
  $('.squaredFour input[type="checkbox"]').click ->
    divSum = $(this).parents('tbody').find('.itogo')
    hiddenSum = divSum.next('.hiddenSum')
    hiddenOveral=$('.hiddenOveral')

    cost = parseFloat($(this).parent('.squaredFour').next('.cost').html())
    sum = parseFloat(hiddenSum.html())
    sumOveral=parseFloat(hiddenOveral.html())

    if $(this).is(':checked')
      overal=sum+cost
      otchet=sumOveral+cost
    else
      overal=sum-cost
      otchet=sumOveral-cost

    hiddenSum.html(overal)
    divSum.html(overal.toLocaleString("ru-RU") + ' ')
    hiddenOveral.html(otchet)
    $('.sumOveral').html(otchet.toLocaleString("ru-RU") + ' ')

