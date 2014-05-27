
ApplicationView = function() {

}

ApplicationView.prototype = {
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

applicationView = new ApplicationView
applicationController = new ApplicationController(applicationView)

applicationController.bindListeners()

})

ApplicationController = function(applicationView){
	this.applicationView = applicationView
}

ApplicationController.prototype = {
	bindListeners : function(){
		$(document).on('click','.increase',this.updateSkill.bind(this))
	},
	updateSkill : function(e){
		
		this.applicationView.increaseSkill(e)
	}
}



