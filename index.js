
'use strict';
import * as core from '@actions/github';

const myInput = core.core.getInput('who-to-greet');


const context = github.context;
console.log(`We can even get context data, like the repo: ${core.context.repo.repo}`)