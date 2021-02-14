
'use strict';
import * as core from '@actions/github';

const context = core.core.github.context;
console.log(`We can even get context data, like the repo: ${context.repo.repo}`)