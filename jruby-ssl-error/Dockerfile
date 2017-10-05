FROM ubuntu:16.04

RUN apt-get update \
 && apt-get install -y curl git vim

# Install rbenv and ruby-build
RUN apt-get install -y \
    autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev \
    zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev \
 && git clone https://github.com/rbenv/rbenv.git ~/.rbenv \
 && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile \
 && echo 'eval "$(rbenv init -)"' >> ~/.bash_profile \
 && bash -lc 'mkdir -p "$(rbenv root)"/plugins' \
 && bash -lc 'git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build'

# Install Java, Ruby, JRuby
RUN apt-get install -y openjdk-8-jdk \
 && bash -lc 'rbenv install 2.4.2' \
 && bash -lc 'rbenv install jruby-9.1.13.0'

COPY ./Equifax_Secure_Certificate_Authority.pem /Equifax_Secure_Certificate_Authority.pem
COPY ./test.rb /test.rb
COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
