FROM ruby:3.0.2
RUN useradd -ms /bin/bash newuser
ADD . /test2
WORKDIR /test2
RUN chown -R newuser /test2
RUN chmod 755 /test2
USER newuser
RUN bundle install
RUN gem install bundler -v 2.0.1
EXPOSE 3000
CMD ["bash"]
