# @prettier/plugin-ruby - Minimal Failing Example

To run:

```bash
docker build -t plugin-ruby-example .
docker run plugin-ruby-example
```

We expect this to lint `src/foo.rb` (with no changes), but instead it returns an error:

```
Checking formatting...
All matched files use Prettier code style!
[error] src/foo.rb: Error: Error: connect ENOENT /tmp/prettier-rubyMxgOzg/1.sock
[error]     at PipeConnectWrap.afterConnect [as oncomplete] (node:net:1137:16) {
[error]   errno: -2,
[error]   code: 'ENOENT',
[error]   syscall: 'connect',
[error]   address: '/tmp/prettier-rubyMxgOzg/1.sock'
[error] }
[error]
[error]     at parseSync (/var/app/node_modules/@prettier/plugin-ruby/src/parser/parseSync.js:11:11)
[error]     at Object.parse (/var/app/node_modules/@prettier/plugin-ruby/src/ruby/parser.js:8:10)
[error]     at Object.parse (/var/app/node_modules/prettier/index.js:13625:19)
[error]     at coreFormat (/var/app/node_modules/prettier/index.js:14899:14)
[error]     at format (/var/app/node_modules/prettier/index.js:15131:14)
[error]     at Object.formatWithCursor (/var/app/node_modules/prettier/index.js:57542:12)
[error]     at format (/var/app/node_modules/prettier/bin-prettier.js:15883:14)
[error]     at Object.formatFiles (/var/app/node_modules/prettier/bin-prettier.js:16067:16)
[error]     at Object.run (/var/app/node_modules/prettier/bin-prettier.js:16538:14)
[error]     at Object.<anonymous> (/var/app/node_modules/prettier/bin-prettier.js:16553:5)
node:events:355
      throw er; // Unhandled 'error' event
      ^

Error: spawn ruby ENOENT
    at Process.ChildProcess._handle.onexit (node:internal/child_process:282:19)
    at onErrorNT (node:internal/child_process:480:16)
    at processTicksAndRejections (node:internal/process/task_queues:81:21)
Emitted 'error' event on ChildProcess instance at:
    at Process.ChildProcess._handle.onexit (node:internal/child_process:288:12)
    at onErrorNT (node:internal/child_process:480:16)
    at processTicksAndRejections (node:internal/process/task_queues:81:21) {
  errno: -2,
  code: 'ENOENT',
  syscall: 'spawn ruby',
  path: 'ruby',
  spawnargs: [
    '/var/app/node_modules/@prettier/plugin-ruby/src/parser/server.rb',
    '/tmp/prettier-rubyMxgOzg/1.sock'
  ]
}
```
