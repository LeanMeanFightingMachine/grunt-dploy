module.exports = (grunt) ->

	# Load tasks
	Object.keys(require("./package.json").devDependencies).forEach (dep) -> grunt.loadNpmTasks dep if dep.substring(0,6) is "grunt-"

	# Project configuration
	grunt.initConfig
		

		# Bump files
		bump:
			options:
				pushTo: "origin master"

		# Publish to NPM
		shell:
			publish:
				command: "npm publish"


	grunt.registerTask "default", ["release"]
	grunt.registerTask "release", "Release a new version, push it and publish", (target) ->
		target ?= "patch"
		grunt.task.run "bump-only:#{target}", "bump-commit", "shell:publish"