http://kamatama41.hatenablog.com/entry/2017/10/05/233502

## How to Run

```sh
$ docker build -t jruby-ssl-error . 

# Run test with CRuby
$ docker run jruby-ssl-error ruby

# Run test with CRuby with Equifax CA cert
$ docker run jruby-ssl-error ruby --set-cert

# Run test with JRuby (with Equifax CA cert)
$ docker run jruby-ssl-error jruby (--set-cert)
```
