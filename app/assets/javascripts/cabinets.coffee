$(document).on 'page:change', ->
  $('#cabinet_occupiable_type').change ->
    $.ajax
      url: "/cabinets/cabinet_type?type=#{$(this).val()}"