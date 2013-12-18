'use strict';
var DPLOY;

DPLOY = require("dploy");

module.exports = function(grunt) {
  return grunt.registerMultiTask("dploy", "Deploy websites with DPLOY", function() {
    var done, server;
    done = this.async();
    return server = new DPLOY(this.data, function() {
      return done();
    });
  });
};
