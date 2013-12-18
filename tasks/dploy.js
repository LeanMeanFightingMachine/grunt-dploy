'use strict';

var DPLOY = require("dploy");

module.exports = function(grunt) {

	grunt.registerMultiTask("dploy", "Deploy websites with DPLOY", function() {
		var done = this.async();

		var dploy = new DPLOY(this.data, function() {
			done();
		});
	});
	
};
