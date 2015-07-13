module.exports = function(grunt, task) {
  var tasks = grunt.cli.tasks;
  for (var i = 0; i < tasks.length; i++) {
    var parts = tasks[i].split(':');
    if (parts[0] === task) {
      return parts[1];
    }
  }

  return null;
};
