/*MODIFIED CODE BEGIN*/
// This is not part of Node... added to expose needed methods.

#include "v8.h"

namespace node
{
  class Environment;

  v8::Handle<v8::Context> makeContext(v8::Isolate *isolate, v8::Handle<v8::Object> sandbox);
  void deleteContextifyContext(void*);
}

/*MODIFIED CODE END*/

