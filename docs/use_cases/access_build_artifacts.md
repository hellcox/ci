# Access build artifacts #

Accessing build artifacts is an essential piece of CI systems. 
`fastlane.ci` supports a flexible system to allow any kind of store options, so that developers can own their data.
For more information on how it works, check out [docs/ArtifactsAndBuilds.md](/docs/ArtifactsAndBuilds.md)

Artifacts include:
- the complete build output (both prettified, and the raw output)
- the actual build artifacts (e.g. `ipa` file)
- supporting files (e.g. code coverage report files, `dSYM` crash symbolication files, etc.)

### Assumptions ###
- fastlane.ci already setup
- at least one repo already setup
- user already selected where to store build artifacts
- user logged in

### Results ###
The developer is able to download the raw/full artifact attached to a build

### Steps ###
1. User selected project
1. User selected a build from the project's build list
1. The (prettified) fastlane build output is already shown in the build details
1. Next to the build output, there is a list of all the available artifacts (this could be `n` items), potentially with some extra information
    1. the size of the artifact
    1. the used artifact provider (e.g. Google Cloud Storage, SFTP, etc.)
    1. the name of the artifact
1. By clicking on the specific build artifact, a new browser tab is opened with the URL provided by the storage used for this particular build

### Error states ###
[WIP]

### Notes ###

The prettified output is generated by _fastlane_ using [xcpretty](https://github.com/supermarin/xcpretty). Both _gym_ and _scan_ also generate a raw `.log` file that doesn't use `xcpretty`. This is :key:, as sometimes `xcpretty` would swallow relevent error information.
