CodeBuild Local をお試しするサンプル
========

Requirements
========

* Docker
* make

Try CodeBuild Local!!
========

```bash
$ make
./aws-codebuild-docker-images/local_builds/codebuild_build.sh -i aws/codebuild/standard:2.0 \
        -e ./codebuild.local.env -s . -a ./artifacts
Build Command:

docker run -it -v /var/run/docker.sock:/var/run/docker.sock -e "IMAGE_NAME=aws/codebuild/standard:2.0" -e "ARTIFACTS=/Users/m_kanno/ikasama/codebuild-local-sample/artifacts" -e "SOURCE=/Users/m_kanno/ikasama/codebuild-local-sample/." -v "/Users/m_kanno/ikasama/codebuild-local-sample:/LocalBuild/envFile/" -e "ENV_VAR_FILE=codebuild.local.env" -e "INITIATOR=m_kanno" amazon/aws-codebuild-local:latest

Removing agent-resources_build_1 ... done
Removing agent-resources_agent_1 ... done
Removing network agent-resources_default
Removing volume agent-resources_source_volume
Removing volume agent-resources_user_volume
Creating network "agent-resources_default" with the default driver
Creating volume "agent-resources_source_volume" with local driver
Creating volume "agent-resources_user_volume" with local driver
Creating agent-resources_agent_1 ... done
Creating agent-resources_build_1 ... done
Attaching to agent-resources_agent_1, agent-resources_build_1
agent_1  | 2019/08/26 09:19:43 [Customer Config] Couldn't open specified customer config file: open /root/.aws/config: no such file or directory
agent_1  | 2019/08/26 09:19:43 [Customer Config] Error parsing supplied customer config file: invalid argument
agent_1  | [Container] 2019/08/26 09:19:44 Waiting for agent ping
agent_1  | [Container] 2019/08/26 09:19:45 Waiting for DOWNLOAD_SOURCE
agent_1  | [Container] 2019/08/26 09:19:46 Phase is DOWNLOAD_SOURCE
agent_1  | [Container] 2019/08/26 09:19:46 CODEBUILD_SRC_DIR=/codebuild/output/src091727491/src
agent_1  | [Container] 2019/08/26 09:19:46 YAML location is /codebuild/output/srcDownload/src/buildspec.yml
agent_1  | [Container] 2019/08/26 09:19:46 Processing environment variables
agent_1  | [Container] 2019/08/26 09:19:46 Moving to directory /codebuild/output/src091727491/src
agent_1  | [Container] 2019/08/26 09:19:46 Registering with agent
agent_1  | [Container] 2019/08/26 09:19:46 Phases found in YAML: 4
agent_1  | [Container] 2019/08/26 09:19:46  INSTALL: 2 commands
agent_1  | [Container] 2019/08/26 09:19:46  PRE_BUILD: 2 commands
agent_1  | [Container] 2019/08/26 09:19:46  BUILD: 2 commands
agent_1  | [Container] 2019/08/26 09:19:46  POST_BUILD: 1 commands
agent_1  | [Container] 2019/08/26 09:19:46 Phase complete: DOWNLOAD_SOURCE State: SUCCEEDED
agent_1  | [Container] 2019/08/26 09:19:46 Phase context status code:  Message: 
agent_1  | [Container] 2019/08/26 09:19:46 Entering phase INSTALL
agent_1  | [Container] 2019/08/26 09:19:46 Running command echo "Installing Docker version 18 ..."
agent_1  | Installing Docker version 18 ...
agent_1  | 
agent_1  | [Container] 2019/08/26 09:19:46 Running command echo Install phase
agent_1  | Install phase
agent_1  | 
agent_1  | [Container] 2019/08/26 09:19:46 Running command env | sort
agent_1  | ANDROID_HOME=/usr/local/android-sdk-linux
agent_1  | ANDROID_SDK_BUILD_TOOLS=build-tools;28.0.3
agent_1  | ANDROID_SDK_EXTRAS=extras;android;m2repository extras;google;m2repository extras;google;google_play_services
agent_1  | ANDROID_SDK_MANAGER_SHA256=92ffee5a1d98d856634e8b71132e8a95d96c83a63fde1099be3d86df3106def9
agent_1  | ANDROID_SDK_MANAGER_VER=4333796
agent_1  | ANDROID_SDK_PLATFORM_TOOLS=platforms;android-28
agent_1  | ANT_DOWNLOAD_SHA512=c1a9694c3018e248000ff6f46d48af85f537ef3935e0d5256543c58a240084c0aff5289fd9e94cbc40d5442f3cc43592398047f2548fded40d9882be2b40750d
agent_1  | ANT_VERSION=1.10.6
agent_1  | AWS_DEFAULT_REGION=us-east-1
agent_1  | AWS_REGION=us-east-1
agent_1  | CODEBUILD_AGENT_ENDPOINT=http://BMR:3000
agent_1  | CODEBUILD_AGENT_PORT=http://BMR:3000
agent_1  | CODEBUILD_AUTH_TOKEN=12345
agent_1  | CODEBUILD_BUILD_ARN=arn:aws:codebuild:us-east-1:000000000000:build/local:00000000-0000-0000-0000-000000000000
agent_1  | CODEBUILD_BUILD_ID=local:00000000-0000-0000-0000-000000000000
agent_1  | CODEBUILD_BUILD_IMAGE=aws/codebuild/standard:2.0
agent_1  | CODEBUILD_BUILD_SUCCEEDING=1
agent_1  | CODEBUILD_CI=false
agent_1  | CODEBUILD_GOPATH=/codebuild/output/src091727491
agent_1  | CODEBUILD_INITIATOR=m_kanno
agent_1  | CODEBUILD_LAST_EXIT=0
agent_1  | CODEBUILD_LOCAL_BUILD=true
agent_1  | CODEBUILD_SRC_DIR=/codebuild/output/src091727491/src
agent_1  | CODEBUILD_START_TIME=1566811184049
agent_1  | DEBIAN_FRONTEND=noninteractive
agent_1  | DEP_BINARY=dep-linux-amd64
agent_1  | DEP_VERSION=0.5.1
agent_1  | DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
agent_1  | DOCKER_BUCKET=download.docker.com
agent_1  | DOCKER_CHANNEL=stable
agent_1  | DOCKER_COMPOSE_VERSION=1.24.0
agent_1  | DOCKER_SHA256=1f3f6774117765279fce64ee7f76abbb5f260264548cf80631d68fb2d795bb09
agent_1  | DOCKER_VERSION=18.09.6
agent_1  | DOTNET_SDK_DOWNLOAD_SHA=1D660A323180DF3DA8C6E0EA3F439D6BBEC29670D498AC884F38BF3CDFFBB041C7AFFF66171CDFD24C82394B845B135B057404DEF1FCE9F206853726382BC42B
agent_1  | DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/2.2.300/dotnet-sdk-2.2.300-linux-x64.tar.gz
agent_1  | DOTNET_SDK_VERSION=2.2.300
agent_1  | GITVERSION_VERSION=4.0.0
agent_1  | GOLANG_DOWNLOAD_SHA256=aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf
agent_1  | GOLANG_VERSION=1.12.5
agent_1  | GOPATH=/go:/codebuild/output/src091727491
agent_1  | GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
agent_1  | GPG_KEYS=CBAF69F173A0FEA4B537F470D66C9593118BCCB6 F38252826ACD957EF380D39F2F7956BC5DA04B5D
agent_1  | GRADLE_DOWNLOADS_SHA256=14cd15fc8cc8705bd69dcfa3c8fefb27eb7027f5de4b47a8b279218f76895a91 5.4.1\n336b6898b491f6334502d8074a6b8c2d73ed83b92123106bd4bf837f04111043 4.10.3
agent_1  | GRADLE_PATH=/usr/src/gradle
agent_1  | GRADLE_VERSION=5.4.1
agent_1  | HOME=/root
agent_1  | HOSTNAME=411eec439972
agent_1  | INSTALLED_GRADLE_VERSIONS=4.10.3 5.4.1
agent_1  | JAVA_11_HOME=/opt/jvm/openjdk-11
agent_1  | JAVA_8_HOME=/usr/lib/jvm/java-8-openjdk-amd64
agent_1  | JAVA_HOME=/opt/jvm/openjdk-11
agent_1  | JAVA_VERSION=11
agent_1  | JDK_11_HOME=/opt/jvm/openjdk-11
agent_1  | JDK_8_HOME=/usr/lib/jvm/java-8-openjdk-amd64
agent_1  | JDK_DOWNLOAD_SHA256=99be79935354f5c0df1ad293620ea36d13f48ec3ea870c838f20c504c9668b57
agent_1  | JDK_DOWNLOAD_TAR=openjdk-11.0.2_linux-x64_bin.tar.gz
agent_1  | JDK_HOME=/opt/jvm/openjdk-11
agent_1  | JDK_VERSION=11.0.2
agent_1  | JDK_VERSION_TAG=9
agent_1  | JRE_11_HOME=/opt/jvm/openjdk-11
agent_1  | JRE_8_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
agent_1  | JRE_HOME=/opt/jvm/openjdk-11
agent_1  | LANG=C.UTF-8
agent_1  | LC_ALL=C.UTF-8
agent_1  | MAVEN_CONFIG=/root/.m2
agent_1  | MAVEN_DOWNLOAD_SHA512=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
agent_1  | MAVEN_HOME=/opt/maven
agent_1  | MAVEN_OPTS=-Dmaven.wagon.httpconnectionManager.maxPerRoute=2
agent_1  | MAVEN_VERSION=3.6.1
agent_1  | NODE_8_VERSION=8.16.0
agent_1  | NODE_VERSION=10.16.0
agent_1  | NO_PROXY=BMR:3000
agent_1  | NUGET_XMLDOC_MODE=skip
agent_1  | N_SRC_DIR=/usr/src/n
agent_1  | OLDPWD=/codebuild/output/srcDownload/src
agent_1  | PATH=~/.dotnet/tools/:/go/bin:/usr/local/go/bin:/php/bin:/usr/local/php/bin:/usr/local/bin:/root/.rbenv/shims:/usr/local/rbenv/bin:/usr/local/rbenv/shims:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/tools:/usr/local/android-sdk-linux/tools:/usr/local/android-sdk-linux/tools/bin:/usr/local/android-sdk-linux/platform-tools
agent_1  | PHPPATH=/php
agent_1  | PHP_ASC_URL=https://secure.php.net/get/php-7.3.6.tar.xz.asc/from/this/mirror
agent_1  | PHP_CFLAGS=-fstack-protector -fpic -fpie -O2
agent_1  | PHP_CPPFLAGS=-fstack-protector -fpic -fpie -O2
agent_1  | PHP_DOWNLOAD_SHA=fefc8967daa30ebc375b2ab2857f97da94ca81921b722ddac86b29e15c54a164
agent_1  | PHP_INI_DIR=/usr/local/etc/php
agent_1  | PHP_LDFLAGS=-Wl,-O1 -Wl,--hash-style=both -pie
agent_1  | PHP_SRC_DIR=/usr/src/php
agent_1  | PHP_URL=https://secure.php.net/get/php-7.3.6.tar.xz/from/this/mirror
agent_1  | PHP_VERSION=7.3.6
agent_1  | POWERSHELL_DOWNLOAD_SHA=E8287687C99162BF70FEFCC2E492F3B54F80BE880D86B9A0EC92C71B05C40013
agent_1  | POWERSHELL_DOWNLOAD_URL=https://github.com/PowerShell/PowerShell/releases/download/v6.2.1/powershell-6.2.1-linux-x64.tar.gz
agent_1  | PWD=/codebuild/output/src091727491/src
agent_1  | PYTHON_PIP_VERSION=19.1.1
agent_1  | PYTHON_VERSION=3.7.3
agent_1  | RBENV_SRC_DIR=/usr/local/rbenv
agent_1  | RUBY_BUILD_SRC_DIR=/usr/local/rbenv/plugins/ruby-build
agent_1  | RUBY_VERSION=2.6.3
agent_1  | SBT_VERSION=1.2.8
agent_1  | SRC_DIR=/usr/src
agent_1  | key1=value1
agent_1  | key2=value2
agent_1  | 
agent_1  | [Container] 2019/08/26 09:19:46 Phase complete: INSTALL State: SUCCEEDED
agent_1  | [Container] 2019/08/26 09:19:46 Phase context status code:  Message: 
agent_1  | [Container] 2019/08/26 09:19:46 Entering phase PRE_BUILD
agent_1  | [Container] 2019/08/26 09:19:46 Running command echo Pre build phase...
agent_1  | Pre build phase...
agent_1  | 
agent_1  | [Container] 2019/08/26 09:19:46 Running command if $CODEBUILD_CI; then echo This line is executed only in the real CodeBuild environment; fi
agent_1  | 
agent_1  | [Container] 2019/08/26 09:19:46 Phase complete: PRE_BUILD State: SUCCEEDED
agent_1  | [Container] 2019/08/26 09:19:46 Phase context status code:  Message: 
agent_1  | [Container] 2019/08/26 09:19:46 Entering phase BUILD
agent_1  | [Container] 2019/08/26 09:19:46 Running command echo Build started on `date`
agent_1  | Build started on Mon Aug 26 09:19:46 UTC 2019
agent_1  | 
agent_1  | [Container] 2019/08/26 09:19:46 Running command echo This is artifact > artifact.txt
agent_1  | 
agent_1  | [Container] 2019/08/26 09:19:46 Phase complete: BUILD State: SUCCEEDED
agent_1  | [Container] 2019/08/26 09:19:46 Phase context status code:  Message: 
agent_1  | [Container] 2019/08/26 09:19:46 Entering phase POST_BUILD
agent_1  | [Container] 2019/08/26 09:19:46 Running command echo Build completed on `date`
agent_1  | Build completed on Mon Aug 26 09:19:46 UTC 2019
agent_1  | 
agent_1  | [Container] 2019/08/26 09:19:46 Phase complete: POST_BUILD State: SUCCEEDED
agent_1  | [Container] 2019/08/26 09:19:46 Phase context status code:  Message: 
agent_1  | [Container] 2019/08/26 09:19:46 Expanding base directory path: .
agent_1  | [Container] 2019/08/26 09:19:46 Assembling file list
agent_1  | [Container] 2019/08/26 09:19:46 Expanding .
agent_1  | [Container] 2019/08/26 09:19:46 Expanding artifact file paths for base directory .
agent_1  | [Container] 2019/08/26 09:19:46 Assembling file list
agent_1  | [Container] 2019/08/26 09:19:46 Expanding artifact.txt
agent_1  | [Container] 2019/08/26 09:19:46 Found 1 file(s)
agent_1  | [Container] 2019/08/26 09:19:46 Preparing to copy secondary artifacts
agent_1  | [Container] 2019/08/26 09:19:46 No secondary artifacts defined in buildspec
agent_1  | [Container] 2019/08/26 09:19:46 Phase complete: UPLOAD_ARTIFACTS State: SUCCEEDED
agent_1  | [Container] 2019/08/26 09:19:46 Phase context status code:  Message: 
agent-resources_build_1 exited with code 0
Aborting on container exit...
```
