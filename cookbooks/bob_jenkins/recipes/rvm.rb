rvm_dependencies = ['patch',
                    'libyaml-devel',
                    'autoconf',
                    'gcc-c++',
                    'patch',
                    'readline-devel',
                    'zlib-devel',
                    'libffi-devel',
                    'openssl-devel',
                    'automake',
                    'libtool',
                    'bison',
                    'sqlite-devel']

rvm_dependencies.each do |p|
  package p
end
