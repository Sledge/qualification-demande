jQuery(function($) {
  // when the field changes
  $("#qualification_verb_id").change(function() {
    var q = $("select#qualification_verb_id :selected").val();
    $("#verb_refine_text").html(verbs_refine_text[q]);
    jQuery.get('/qualifications/'+ q  +'/select.subject', function(data){
        $("#subject").html(data);
        $("#cplmt").html('');
    })
    return false;
  });

  $("#qualification_subject_id").live('change', function() {
    var q = $("select#qualification_subject_id :selected").val();
    $("#subject_refine_text").html(verbs_refine_text[q]);
    jQuery.get('/qualifications/'+ q  +'/select.cplmt', function(data){
        $("#cplmt").html(data);
    })
    return false;
  });


})
