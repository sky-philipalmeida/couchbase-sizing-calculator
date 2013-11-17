#START:Calculator
class Calculator
	@METADATA_PER_DOCUMENT = 56
	@OLD_METADATA_PER_DOCUMENT = 64
	@SSD_STORAGE_TYPE = 'ssd'
	@SPINNING_STORAGE_TYPE = 'spinning'

	# Default options
	@DEFAULTS = 
		num_of_documents: 1000000
		id_size: 100
		value_size: 10000
		number_of_replicas: 1
		working_set_percentage: .2
		metadata_per_document: @METADATA_PER_DOCUMENT
		storage_type: @SSD_STORAGE_TYPE
		high_water_mark: .7

	constructor: (options={}) ->
		# if running this code in a browser and you have jQuery available you can simplify the constructor logic
		# by uncommenting the line below and removing the remaining code below that line.
		#@options = $.extend({}, @defaults, options)
		@options = {}		
		@options.num_of_documents 		= options.num_of_documents 	  	 ? @constructor.DEFAULTS.num_of_documents
		@options.id_size 				= options.id_size 				 ? @constructor.DEFAULTS.id_size
		@options.value_size 			= options.value_size 			 ? @constructor.DEFAULTS.value_size
		@options.number_of_replicas	 	= options.number_of_replicas 	 ? @constructor.DEFAULTS.number_of_replicas
		@options.working_set_percentage = options.working_set_percentage ? @constructor.DEFAULTS.working_set_percentage
		@options.metadata_per_document  = options.metadata_per_document  ? @constructor.DEFAULTS.metadata_per_document
		@options.storage_type 			= options.storage_type 		  	 ? @constructor.DEFAULTS.storage_type
		@options.high_water_mark 		= options.high_water_mark 		 ? @constructor.DEFAULTS.high_water_mark		

	number_of_copies: ->
		# 1 + number_of_replicas
		1 + @options.number_of_replicas
#END:Calculator

root = exports ? window
root.Calculator = Calculator