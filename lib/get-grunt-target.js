module.exports = function(grunt, task) {
  var tasks = grunt.cli.tasks;
  var targets = [];
  for (var i = 0; i < tasks.length; i++) {
    var parts = tasks[i].split(':');
    if (parts[0] === task) {
      targets.push(parts[1]);
    }
  }
  if (targets.length === 0) {
    return null;
  } else if (targets.length === 1) {
    return targets[0];
  } else {
    return targets;
  }
};
