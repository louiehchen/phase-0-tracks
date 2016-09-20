zoo = {
	entrance: [
		'ticket office'
		'bathrooms'
		'gift shop'
		'fountain'
	],
	aquarium: {
		show_times: '12pm, 4pm'
		coral_reef: [
			'shark'
			'anemone'
			'octopus'
			'clownfish'
		],
		deep_sea: [
			'giant squid'
			'angler fish'
			'the kraken'
		]
	},
	africa: {
		show_times: '2pm, 6pm'
		predators: [
			'lions'
			'leopards'
			'hyenas'
			'cheetahs'
			'crocodiles'
		],
		herbivores: [
			'elephants'
			'giraffes'
			'gazelles'
			'rhinos'
		]
	},
	australia: {
		show_times: '10am, 3pm'
		dangerous: [
			'huge spiders'
			'crazy snakes'
			'tasmanian devil'
		],
		not_dangerous: [
			'kangaroos'
			'koalas'
			'platypusses'
			'wombats'
		]
	}
	
}

p zoo[:entrance][0]
# returns "ticket office"

p zoo[:australia][:show_times]
# returns "10am, 3pm", so you know when to go to Australia exhibit for their shows

p zoo[:africa][:herbivores][1]
# returns "giraffes"