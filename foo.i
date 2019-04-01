%module foo
%{
#include "Foo.h"
#include "Bar.h"

int FooCount = 0;
%}

%include <std_shared_ptr.i>
%include <stl.i>  /* allows for automatic conversions between python and std::containers and std::string  and for us to use %template below */


%shared_ptr(Foo)
%include "Foo.h"


%template(vector_Foo) std::vector<FooPtr>;

%shared_ptr(Bar)
%include "Bar.h"


