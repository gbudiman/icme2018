var ecf = function() {
	var pg_reg
	var pg_workshop
	var submit_button
	var art_title
	var auth_name
	var art_id
	var auth_email
	var pub_title
	var art_source

	var init = function() {
		pg_reg = $('#icme2018reg')
		pg_workshop = $('#icme2018w')
		art_title = $('input[name="ArtTitle"]')
		auth_name = $('input[name="AuthName"]')
		art_id = $('input[name="ArtId"]')
		auth_email = $('input[name="AuthEmail"]')
		submit_button = $('#submit-button')
		pub_title = $('input[name="PubTitle"]')
		art_source = $('input[name="ArtSource"]')

		pg_reg.on('change', function() { update_pub('regular'); eval_form() })
		pg_workshop.on('change', function() { update_pub('workshop'); eval_form() })
		art_title.on('keyup', eval_form)
		art_id.on('keyup', eval_form)
		auth_name.on('keyup', eval_form)
		auth_email.on('keyup', eval_form)
	}

	var eval_form = function() {
		if ((pg_reg.prop('checked') || pg_workshop.prop('checked')) &&
				art_title.val().trim().length > 0 &&
				art_id.val().trim().length > 0 &&
				auth_name.val().trim().length > 0 &&
				auth_email.val().trim().length > 0) {
			submit_button.attr('disabled', false)	
		} else {
			submit_button.attr('disabled', true)
		}
		
	}

	var update_pub = function(s) {
		switch(s) {
			case 'workshop':
				pub_title.val('2018 IEEE International Conference on Multimedia & Expo Workshops (ICMEW)')
				art_source.val('43155')
				break
			case 'regular':
				pub_title.val('2018 IEEE International Conference on Multimedia and Expo (ICME)')
				art_source.val('41493')
				break
		}
	}

	return {
		init: init
	}
}()
;
