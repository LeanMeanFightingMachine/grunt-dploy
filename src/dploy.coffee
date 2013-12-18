'use strict'

DPLOY = require "dploy"

module.exports = (grunt) ->
	
	grunt.registerMultiTask "dploy", "Deploy websites with DPLOY", ->
		done = this.async()
		server = new DPLOY this.data, done