
const github = require('@actions/github');
const core = require('@actions/core');

const nameToGreet = core.getInput('who-to-greet');
console.log(`Hello ${nameToGreet}!`);
const context = github.context
console.log(`We can even get context data, like the repo: ${context.repo.repo}`)
console.log(JSON.stringify(context))
const newIssue = await octokit.issues.create({
    ...context.repo,
    title: 'New issue!',
    body: 'Hello Universe!'
  });