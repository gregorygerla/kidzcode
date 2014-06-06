$(function() {
    $( ".greg" ).datepicker(
    {
      changeMonth: true,
      changeYear: true,
    }
    );
    $( "#anim" ).change(function() {
      $( ".greg" ).datepicker( "option", "showAnim", $( this ).val() );
    });
    for (i = new Date().getFullYear(); i > 1900; i--)
	{
    $('.greg').append($('<option />').val(i).html(i));
	}
 });

ApplicationModel = function(){
	this.appointmentDay = []
	this.appointmentTime = []
}

ApplicationModel.prototype = {

}





ApplicationView = function(applicationModel) {
	this.applicationModel = applicationModel
}

ApplicationView.prototype = {
	ajaxAppointment : function(e) {
		e.preventDefault()
		 sendThis = applicationModel.appointmentDay[0]
		 Time = applicationModel.appointmentTime[0]
		console.log("sdfgsf")
		$.ajax({
			url:'/students/1/appointments',
			data: {
   				 date : sendThis,
   				 time : Time
  			},
  			type: 'POST'
			
		})
		.done(function(data){
			$('.appointments').hide()
			$('.upcoming').html(data)
		})
	},
	increaseSkill : function(e){
		e.preventDefault()

		update = $(e.target)
		object = $(e.target).data('val')
		$.ajax({
			url: '/admin/students/'+object+'',
			data: object,
			type: 'PUT'
		})
		.done(function(data){
			console.log(data.level)
			node = $(update).siblings()[0]
			$(node).html(data.level)
		})
			
	}
}


$(document).ready(function(){
applicationModel = new ApplicationModel
applicationView = new ApplicationView(applicationModel)
applicationController = new ApplicationController(applicationView,applicationModel)

applicationController.bindListeners()

})

ApplicationController = function(applicationView){
	this.applicationView = applicationView
	this.applicationModel = applicationModel
}

ApplicationController.prototype = {
	bindListeners : function(){
		$(document).on('click','.increase',this.updateSkill.bind(this))
		$('.picker').on('click',this.showTimes)
		$('.timeslot').on('click',this.pickSlot)
		$('.book').on('click',this.bookAppointment.bind(this))
	},
	pickSlot : function(e) {
		console.log("Asdfadf")
		e.preventDefault();
		$('.book_appt').show()
		parent = $(this).parent().parent()
		parent.find('a').css('background-color','#00759C')
		$( this ).css( "background-color", "green" )
		applicationModel.appointmentTime.pop(1)
		applicationModel.appointmentTime.push($(this).attr("data"));
		
		$('.book_header').html("Confirm for "+applicationModel.appointmentDay+" at "+applicationModel.appointmentTime+"?")
	},
	updateSkill : function(e){
		e.preventDefault();
		this.applicationView.increaseSkill(e)
	},
	showTimes : function(e){

		e.preventDefault();
		parent = $(this).parent().parent()
		parent.find('a').css('background-color','#00759C')
		
		$( this ).css( "background-color", "green" )
		$('.book_header').html("Confirm for "+applicationModel.appointmentDay+" at "+applicationModel.appointmentTime+"?")
		applicationModel.appointmentDay.pop(1)
		applicationModel.appointmentDay.push($(this).attr("data"))

		console.log($(this).attr("data"))
		$('.day').show()
	},
	bookAppointment : function(e) {
		e.preventDefault()
		this.applicationView.ajaxAppointment(e)
	}
}



