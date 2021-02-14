
import * as core from '@actions/core';

const myInput = core.getInput('who-to-greet');
core.debug(`Hello ${myInput} from inside a container`);

const context = github.context;
console.log(`We can even get context data, like the repo: ${context.repo.repo}`)